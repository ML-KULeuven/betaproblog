
% A multi-modal solution
% So the query that comes out is multi-modal

beta(0.3,0.3)::a.
beta(0.3,0.3)::b.

e :- \+a, b.
e :- \+b, a.

query(e).
