import random

from problog.clausedb import ClauseDB

from problog import get_evaluatable
from problog.logic import (
    Term,
    Clause,
    AnnotatedDisjunction,
    Or,
    Constant,
    InstantiationError,
    Var,
)
from problog.program import LogicProgram
from problog.engine import DefaultEngine, ground

import torch
from torch.autograd import Variable
from torch.distributions import Beta, Dirichlet


class ReplaceAnon(object):
    """Used to replace anonymous variables with non-anonymous variables."""

    def __init__(self):
        self.cnt = 0

    def __getitem__(self, key):
        if key == "_":
            self.cnt += 1
            return Var("anon_%s" % self.cnt)
        else:
            return Var(key)


class TransformedInferenceProgram(ClauseDB):
    def __init__(self, engine, device, **extra):
        # logger = logging.getLogger('problog_lfi')
        ClauseDB.__init__(self, **extra)
        self.extra = extra

        self._distributions = []

        # list AD atoms and total probability of the unknown parts. (e.g. 0.3::a ; t(_)::b ; t(_)::c. -> (0.7, cst)
        self._adatoms = []  # type: list[tuple(float, int)]
        self.device = device
        self.engine = engine

    def add_all(self, src):
        result = self
        for src_clause in self._get_next_source_clause(src):
            result += src_clause
        return (
            None,
            None,
        )  # TODO: normally returns something with modules, for now None, None is fine I guess..

    def _get_next_source_clause(self, src):
        for clause in src:
            if isinstance(clause, Clause):
                # if clause.head.functor == "query" and clause.head.arity == 1:
                #     continue
                new_clauses = self._process_clause(clause)
            elif isinstance(clause, AnnotatedDisjunction):
                new_clauses = self._process_ad(clause)
            elif isinstance(clause, Or):
                new_clauses = self._process_or(clause)
            elif type(clause) == Term:
                # if clause.functor == "query" and clause.arity == 1:
                #     continue
                new_clauses = self._process_atom(clause)
            else:
                # if clause.functor == "query" and clause.arity == 1:
                #     continue
                new_clauses = [clause]
            for extra in new_clauses:
                # print("RULE >>", extra)
                yield extra

    def _get_AD_probability(self, atoms):
        """
        #TODO: Clean up
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
            if atom.probability and atom.probability.functor == "dir":
                try:
                    prior_probability += float(
                        atom.probability.args[0]
                    )  # += startvalue
                except InstantiationError or ArithmeticError:
                    # Can't be converted to float => take random
                    num_random_weights += 1
            elif atom.probability and atom.probability.is_constant():
                # TODO any known term like 1/3::a ; ... will not be included here as it is a Term instead of Constant.
                # is that what we want?
                fixed_probability += float(atom.probability)
        return prior_probability, fixed_probability, num_random_weights

    def _process_clause(self, clause):
        if not (
            clause.head.probability and (clause.head.probability.functor == "beta")
        ):
            return [clause]
        # else:
        head = clause.head
        body = clause.body

        # replace the prob of the head of the clause with samples({index}, 0)
        samples_index = len(self._distributions)
        samples_prob = Term("samples", Constant(samples_index), Constant(0))
        atom1 = head.apply(ReplaceAnon())
        new_head = atom1.with_probability(samples_prob)
        new_clause = Clause(new_head, body)

        # Create distribution
        alpha_val = float(head.probability.args[0].compute_value())
        beta_val = float(head.probability.args[1].compute_value())
        concentration = Variable(
            torch.tensor(
                [alpha_val, beta_val],
                dtype=torch.float32,
                device=torch.device(self.device),
            ),
            requires_grad=True,
        )
        self._distributions.append(Dirichlet(concentration))

        return [new_clause]

    def _process_ad(self, ad):
        heads = ad.heads
        body = ad.body
        assert isinstance(heads, list)
        # TODO: Deal with partially dirichlet ADs
        ad_dir_atoms = [
            atom
            for atom in heads
            if atom.probability and atom.probability.functor == "dir"
        ]

        if len(ad_dir_atoms) == 0:
            return [ad]

        if len(ad_dir_atoms) > 1:
            # Gather AD information. Which lfi indices form an AD and what remaining prob must they sum up to.
            ad_unknown_index = len(self._distributions)
            _, fixed_probability, _ = self._get_AD_probability(heads)
            # rem_prob is remaining probability to learn in the AD.
            self._add_ad(rem_prob=1.0 - fixed_probability, index=ad_unknown_index)

        new_atoms = []
        ad_index = -1
        params = []
        for atom in heads:
            if atom.probability and atom.probability.functor == "dir":
                ad_index += 1
                atom1 = atom.apply(ReplaceAnon())

                # Replace the prob of the atom with samples({samples_index}, {ad_index}, t)
                samples_index = len(self._distributions)
                samples_prob = Term(
                    "samples", Constant(samples_index), Constant(ad_index)
                )
                new_atom = atom1.with_probability(samples_prob)

                # Set params
                params.append(atom.probability.args[0].compute_value())
                new_atoms.append(new_atom)
            else:
                new_atoms.append(atom)
            # Add distribution
            concentration = Variable(
                torch.tensor(
                    params, dtype=torch.float32, device=torch.device(self.device)
                ),
                requires_grad=True,
            )
            self._distributions.append(Dirichlet(concentration))
        return [AnnotatedDisjunction(new_atoms, body)]

    def _process_or(self, term):
        heads = []
        rec_term = term
        while type(rec_term) != Term:
            heads.append(rec_term.op1)
            rec_term = rec_term.op2
        heads.append(rec_term)

        ad_dir_atoms = [
            atom
            for atom in heads
            if atom.probability and atom.probability.functor == "dir"
        ]

        if len(ad_dir_atoms) == 0:
            return [term]

        if len(ad_dir_atoms) > 1:
            # Gather AD information. Which lfi indices form an AD and what remaining prob must they sum up to.
            ad_unknown_index = len(self._distributions)
            _, fixed_probability, _ = self._get_AD_probability(heads)
            # rem_prob is remaining probability to learn in the AD.
            self._add_ad(rem_prob=1.0 - fixed_probability, index=ad_unknown_index)

        new_atoms = []
        ad_index = -1
        params = []
        for atom in heads:
            if atom.probability and atom.probability.functor == "dir":
                ad_index += 1
                atom1 = atom.apply(ReplaceAnon())

                # Replace the prob of the atom with samples({sample_index}, {ad_index}, t)
                samples_index = len(self._distributions)
                samples_prob = Term(
                    "samples", Constant(samples_index), Constant(ad_index)
                )
                new_atom = atom1.with_probability(samples_prob)

                # Set params
                params.append(atom.probability.args[0].compute_value())
                new_atoms.append(new_atom)
            else:
                new_atoms.append(atom)
        # Add distribution
        concentration = Variable(
            torch.tensor(params, dtype=torch.float32, device=torch.device(self.device)),
            requires_grad=True,
        )
        self._distributions.append(Dirichlet(concentration))
        return [Or.from_list(new_atoms)]

    def _process_atom(self, atom):
        if not (atom.probability and atom.probability.functor == "beta"):
            return [atom]
        # else:
        # Replace the prob of the atom with samples({index}, 0)
        atom1 = atom.apply(ReplaceAnon())
        samples_index = len(self._distributions)
        samples_prob = Term("samples", Constant(samples_index), Constant(0))
        new_atom = atom1.with_probability(samples_prob)

        # Create distribution
        alpha_val = float(atom.probability.args[0].compute_value())
        beta_val = float(atom.probability.args[1].compute_value())
        concentration = Variable(
            torch.tensor(
                [alpha_val, beta_val],
                dtype=torch.float32,
                device=torch.device(self.device),
            ),
            requires_grad=True,
        )
        self._distributions.append(Dirichlet(concentration))
        return [new_atom]

    def _add_ad(self, rem_prob, index):
        """
        #TODO: Update doc
        Add an annotated disjunction with a remaining probability and indices.
        :param rem_prob: Remaining probability that can be learned (if no fixed probabilities given, this will be one)
        :type rem_prob: float
        :param index: Indix of atoms that together form an annotated disjunction.
        :type index: int
        """
        self._adatoms.append((rem_prob, index))

    def get_ad_information(self):
        """
        #TODO: Update doc
        Get information on the found annotated disjunctions.
        :return: For each AD, the probability the LFI choices must sum up to and the LFI indices in the AD group.
        :rtype: list[tuple[float, list[int]]]
        """
        return self._adatoms

    def get_distributions(self):
        """
        #TODO:
        """
        return self._distributions

    @classmethod
    def createFrom(cls, src, force_copy=False, **extra):
        """Create a LogicProgram of the current class from another LogicProgram.
        :param src: logic program to convert
        :type src: :class:`.LogicProgram`
        :param force_copy: default False, If true, always create a copy of the original logic \
        program.
        :type force_copy: bool
        :param extra: additional arguments passed to all constructors and action functions
        :returns: LogicProgram that is (externally) identical to given one
        :rtype: object of the class on which this method is invoked
        If the original LogicProgram already has the right class and force_copy is False, then \
        the original program is returned.
        """
        if not force_copy and src.__class__ == cls:
            return src
        else:
            obj = cls(**extra)
            if hasattr(src, "extra_info"):
                obj.extra_info.update(src.extra_info)
            if hasattr(src, "source_root"):
                obj.source_root = src.source_root
            if hasattr(src, "source_files"):
                obj.source_files = src.source_files[:]
                obj.source_parent = src.source_parent[:]
            if hasattr(src, "line_info"):
                obj.line_info = src.line_info[:]
            obj.add_all(src)
            return obj
