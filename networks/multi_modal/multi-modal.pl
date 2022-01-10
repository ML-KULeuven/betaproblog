% A multi-modal solution
% So the query that comes out is multi-modal
beta(0.3,0.5)::a.
beta(0.2,0.8)::b.

e :- \+a,b.
e :- a, \+b.

query(e).