
from problog.clausedb import ClauseDB

from problog.logic import Term, Clause, AnnotatedDisjunction, Or, Constant, InstantiationError, Var


class TransformedLearningProgram(ClauseDB):

    def __init__(
            self,
            **extra
    ):
        # logger = logging.getLogger('problog_lfi')
        ClauseDB.__init__(self, **extra)
        self.extra = extra

        # The names of the atom for which we want to learn weights.
        self.names = []

        # The weights to learn.
        self._weights = []  # type: list[(float | tuple[float, float] | None)]

        # list AD atoms and total probability of the unknown parts. (e.g. 0.3::a ; t(_)::b ; t(_)::c. -> (0.7, cst)
        self._adatoms = []  # type: list[tuple(float, int)]

    @property
    def count(self):
        """Number of parameters to learn."""
        return len(self.names)

    def add_all(self, src):
        result = self
        for src_clause in self._get_next_source_clause(src):
            result += src_clause

    def _get_next_source_clause(self, src):
        for clause in src:
            if isinstance(clause, Clause):
                if clause.head.functor == "query" and clause.head.arity == 1:
                    continue
                new_clauses = self._process_clause(clause)
            elif isinstance(clause, AnnotatedDisjunction):
                new_clauses = self._process_ad(clause)
            elif isinstance(clause, Or):
                new_clauses = self._process_or(clause)
            elif type(clause) == Term:
                if clause.functor == "query" and clause.arity == 1:
                    continue
                new_clauses = self._process_atom(clause)
            else:
                if clause.functor == "query" and clause.arity == 1:
                    continue
                new_clauses = [clause]
            for extra in new_clauses:
                #print("RULE >>", extra)
                yield extra

        # if self.leakprob is not None:
        #    leakprob_atoms = self._get_leakprobatoms()
        #    for example_atom in leakprob_atoms:
        #        yield example_atom.with_probability(Constant(self.leakprob))

    def _get_AD_probability(self, atoms):
        """
        Returns prior and fixed probability of the AD (atoms = list of AD atoms) and the number of random weights.
        The prior is the sum of the start values, the fixed probability is the sum of the known constants and
        the number of random weights is the number of weights that are unknown and do not have a start value.
        :param atoms: The atoms in the AD.
        :type atoms: list[Term]
        :return: The prior and fixed probability of the AD along with the number of random weights without start value.
        :rtype: float, float, int
        """
        prior_probability = 0.0  # Sum of prior weights in AD.
        fixed_probability = 0.0  # Sum of fixed (i.e. non-learnable) weights in AD.
        num_random_weights = 0
        for atom in atoms:
            if atom.probability and (atom.probability.functor == "t" or atom.probability.functor == "dir_t"):
                try:
                    prior_probability += float(atom.probability.args[0])  # += startvalue
                except InstantiationError or ArithmeticError:
                    # Can't be converted to float => take random
                    num_random_weights += 1
            elif atom.probability and atom.probability.is_constant():
                # TODO any known term like 1/3::a ; ... will not be included here as it is a Term instead of Constant.
                # is that what we want?
                fixed_probability += float(atom.probability)
        return prior_probability, fixed_probability, num_random_weights

    #def __get_random_AD_weights(self, prior_probability, fixed_probability, num_random_weights):
    #    random_weights = [random.random() for i in range(0, num_random_weights + 1)]
    #    norm_factor = (1.0 - prior_probability - fixed_probability) / sum(random_weights)
    #    return [r * norm_factor for r in random_weights]

    def _process_clause(self, clause):
        if not(clause.head.probability and
               (clause.head.probability.functor == "t" or clause.head.probability.functor == "beta_t")):
            return [clause]
        #else:
        head = clause.head
        body = clause.body
        beta = clause.head.probability.functor == "beta_t"

        # replace the prob of the head of the clause with lfi({index}, t)
        lfi_index = len(self._weights)
        lfi_p_term = Term("t") if not beta else Term("dir_t")
        lfi_prob = Term("lfi", Constant(lfi_index), Constant(0), lfi_p_term)
        atom1 = head.apply(ReplaceAnon())
        new_head = atom1.with_probability(lfi_prob)
        new_clause = Clause(new_head, body)

        # Set initial weight
        p_indices = [0] if not beta else [0, 1]
        p_values = []
        for p_index in p_indices:
            try:
                p_values.append(float(head.probability.args[p_index]))
            except InstantiationError or ArithmeticError:
                p_values.append(None)
        start_value = p_values[0] if len(p_indices) == 1 else tuple(p_values)
        self._add_weight(start_value)

        # Add name
        self.names.append(head)

        return [new_clause]

    def _process_ad(self, ad):
        heads = ad.heads
        body = ad.body
        assert isinstance(heads, list)
        ad_unknown_atoms = [atom for atom in heads if atom.probability and
                            (atom.probability.functor == "t" or atom.probability.functor == "dir_t")]

        if len(ad_unknown_atoms) == 0:
            return [ad]

        if len(ad_unknown_atoms) > 1:
            # Gather AD information. Which lfi indices form an AD and what remaining prob must they sum up to.
            ad_unknown_index = len(self._weights)
            _, fixed_probability, _ = self._get_AD_probability(heads)
            # rem_prob is remaining probability to learn in the AD.
            self._add_ad(rem_prob=1.0 - fixed_probability, index=ad_unknown_index)

        new_atoms = []
        ad_index = -1
        start_values = []
        for atom in heads:
            if atom.probability and (atom.probability.functor == "t" or atom.probability.functor == "dir_t"):
                ad_index += 1
                atom1 = atom.apply(ReplaceAnon())

                # Replace the prob of the atom with lfi({lfi_index}, {ad_index}, t)
                use_dir = atom.head.probability.functor == "dir_t"
                lfi_index = len(self._weights)
                lfi_p_term = Term("t") if not use_dir else Term("dir_t")
                lfi_prob = Term("lfi", Constant(lfi_index), Constant(ad_index), lfi_p_term)
                new_atom = atom1.with_probability(lfi_prob)

                # Set initial weight
                try:
                    start_value = float(atom.probability.args[0])
                except InstantiationError or ArithmeticError:
                    start_value = None
                start_values.append(start_value)

                # Add name
                self.names.append(atom)
                new_atoms.append(new_atom)
            else:
                new_atoms.append(atom)
            self._add_weight(tuple(start_values))
        return [AnnotatedDisjunction(new_atoms, body)]

    def _process_or(self, term):
        heads = []
        rec_term = term
        while(type(rec_term) != Term):
            heads.append(rec_term.op1)
            rec_term = rec_term.op2
        heads.append(rec_term)

        ad_unknown_atoms = [atom for atom in heads if atom.probability and
                            (atom.probability.functor == "t" or atom.probability.functor == "dir_t")]

        if len(ad_unknown_atoms) == 0:
            return [term]

        if len(ad_unknown_atoms) > 1:
            # Gather AD information. Which lfi indices form an AD and what remaining prob must they sum up to.
            ad_unknown_index = len(self._weights)
            _, fixed_probability, _ = self._get_AD_probability(heads)
            # rem_prob is remaining probability to learn in the AD.
            self._add_ad(rem_prob=1.0 - fixed_probability, index=ad_unknown_index)

        new_atoms = []
        ad_index = -1
        start_values = []
        for atom in heads:
            if atom.probability and (atom.probability.functor == "t" or atom.probability.functor == "dir_t"):
                ad_index += 1
                atom1 = atom.apply(ReplaceAnon())

                # Replace the prob of the atom with lfi({lfi_index}, {ad_index}, t)
                use_dir = atom.probability.functor == "dir_t"
                lfi_index = len(self._weights)
                lfi_p_term = Term("t") if not use_dir else Term("dir_t")
                lfi_prob = Term("lfi", Constant(lfi_index), Constant(ad_index), lfi_p_term)
                new_atom = atom1.with_probability(lfi_prob)

                # Set initial weight
                try:
                    start_value = float(atom.probability.args[0])
                except InstantiationError or ArithmeticError:
                    start_value = None
                start_values.append(start_value)

                # Add name
                self.names.append(atom)
                new_atoms.append(new_atom)
            else:
                new_atoms.append(atom)
        self._add_weight(tuple(start_values))
        return [Or.from_list(new_atoms)]

    def _process_atom(self, atom):
        if not(atom.probability and (atom.probability.functor == "t" or atom.probability.functor == "beta_t")):
            return [atom]
        beta = atom.probability.functor == "beta_t"
        # else:
        # Replace the prob of the atom with lfi({index}, t)
        atom1 = atom.apply(ReplaceAnon())
        lfi_index = len(self._weights)
        lfi_p_term = Term("t") if not beta else Term("dir_t")
        lfi_prob = Term("lfi", Constant(lfi_index), Constant(0), lfi_p_term)
        new_atom = atom1.with_probability(lfi_prob)

        # Set initial weight
        p_indices = 1 if not beta else 2
        p_values = []
        for p_index in range(p_indices):
            try:
                p_values.append(float(atom.probability.args[p_index]))
            except InstantiationError or ArithmeticError:
                p_values.append(None)
        start_value = p_values[0] if p_indices == 1 else tuple(p_values)
        self._add_weight(start_value)

        # Add name
        self.names.append(atom)
        return [new_atom]

    # def _process_atom(self, atom, body):
    #     """Returns tuple ( prob_atom, [ additional clauses ] )"""
    #     if isinstance(atom, Or):
    #         # Annotated disjunction
    #         atoms = atom.to_list()  # TODO So we do AD list to OR and then back to list?
    #     else:
    #         atoms = [atom]
    #
    #     # get AD information
    #     _, fixed_probability, _ = self._get_AD_probability(atoms)
    #
    #     # rem_prob is remaining probability to learn in the AD.
    #     ad_unknown_atoms = [atom for atom in atoms if atom.probability and atom.probability.functor == "t"]
    #     if len(ad_unknown_atoms) > 1:
    #         ad_unknown_indices = [index for index in
    #                               range(len(self._weights), len(self._weights) + len(ad_unknown_atoms))]
    #         self._add_ad(rem_prob=1.0 - fixed_probability, indices=ad_unknown_indices)
    #
    #     # Replace anonymous variables with non-anonymous variables.
    #     class ReplaceAnon(object):
    #         def __init__(self):
    #             self.cnt = 0
    #
    #         def __getitem__(self, key):
    #             if key == "_":
    #                 self.cnt += 1
    #                 return Var("anon_%s" % self.cnt)
    #             else:
    #                 return Var(key)
    #
    #     has_lfi_fact = len(ad_unknown_atoms) > 0
    #     atoms_out = []
    #     extra_clauses = []
    #     for atom in atoms:
    #         if atom.probability and atom.probability.functor == "t":
    #             # t(_)::p(X) :- body.
    #             #
    #             # Translate to
    #             #   lfi(1)::lfi_fact(0,t(X)).
    #             #   p(X) :- body, lfi_fact_0(X).
    #             #
    #             # For annotated disjunction: t(_)::p1(X); t(_)::p2(X) :- body.
    #             #   lfi(0,t)::lfi_fact(0,t(X)); lfi(1,t)::lfi_fact(1,t(X)); ... .
    #             #   p1(X) :- body, lfi_fact(0,t(X)).
    #             #   p2(X) :- body, lfi_fact(1,t(X)).
    #             #  ....
    #             atom1 = atom.apply(ReplaceAnon())
    #             prob_args = atom.probability.args[1:]
    #
    #             # 1) Introduce a new fact
    #             lfi_index = self.count
    #             lfi_fact = Term(
    #                 "lfi_fact", Constant(lfi_index), Term("t", *prob_args, *atom1.args)
    #             )
    #             # lfi_prob = Term('lfi', Constant(self.count), Term('t', *prob_args, *atom1.args))
    #             lfi_prob = Term("lfi", Constant(lfi_index), Term("t"))
    #
    #             # 2) Replacement atom
    #             replacement = lfi_fact.with_probability(lfi_prob)
    #             new_body = lfi_fact if body is None else body & lfi_fact
    #
    #             # 3) Create redirection clause
    #             extra_clauses += [Clause(atom1.with_probability(), new_body)]
    #
    #             # 4) Set initial weight
    #             try:
    #                 start_value = float(atom.probability.args[0])
    #             except InstantiationError or ArithmeticError:
    #                 start_value = None
    #             self._add_weight(start_value)
    #
    #             # 5) Add name
    #             self.names.append(atom)
    #             atoms_out.append(replacement)
    #         else:
    #             atoms_out.append(atom)
    #
    #     if has_lfi_fact:
    #         front_of_list = [atoms_out[0]] if len(atoms) == 1 else [AnnotatedDisjunction(atoms_out, Term("true"))]
    #         return front_of_list + extra_clauses
    #     elif not has_lfi_fact and len(atoms) == 1:
    #         return [atom] if body is None else [Clause(atom, body)]
    #     else:
    #         if body is None:
    #             body = Term("true")
    #         return [AnnotatedDisjunction(atoms_out, body)]

    def _add_ad(self, rem_prob, index):
        """
        Add an annotated disjunction with a remaining probability and indices.
        :param rem_prob: Remaining probability that can be learned (if no fixed probabilities given, this will be one)
        :type rem_prob: float
        :param index: Indix of atoms that together form an annotated disjunction.
        :type index: int
        """
        self._adatoms.append((rem_prob, index))
        #for idx in indices:
        #    self._adatomc[idx] = [idxo for idxo in indices if idxo != idx]

    def _add_weight(self, weight):
        self._weights.append(weight)

    def get_weights(self):
        """
        Get all LFI weights obtained from the transformation.
        :return: A list of weights where each element in index i is the weight of lfi_fact(i,t). None when no start
        value was given, else the start value provided as the argument of t, e.g. t(0.2)
        :rtype: list[(None | float)]
        """
        return self._weights

    def get_ad_information(self):
        """
        Get information on the found annotated disjunctions.
        :return: For each AD, the probability the LFI choices must sum up to and the LFI indices in the AD group.
        :rtype: list[tuple[float, list[int]]]
        """
        return self._adatoms


class ReplaceAnon(object):
    """ Used to replace anonymous variables with non-anonymous variables. """
    def __init__(self):
        self.cnt = 0

    def __getitem__(self, key):
        if key == "_":
            self.cnt += 1
            return Var("anon_%s" % self.cnt)
        else:
            return Var(key)
