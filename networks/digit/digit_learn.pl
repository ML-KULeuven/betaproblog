


% 7-segment display:
%
%    --1--
%   |     |
%   2     3
%   |     |
%    --4--
%   |     |
%   5     6
%   |     |
%    --7--
%



% train on dataset of digits with show predicate in evidence and given label -> use l2 loss for classification
% once we have learned the parameters of the model -> does it follow benfords law to within acceptable tolerance? only possible to answer if we have variance
% used in fraud detection -> what was the underlying model that generated this data? how certain are we about that model?
%



% compare discrete finite set of models
%

%? :: model1; ? :: model2; ? :: model3.

%0.1 :: digit(0); 0.1 :: digit(1); 0.05 :: digit(2); 0.05 :: digit(3); 0.2 :: digit(4); 0.05 :: digit(5); 0.1 :: digit(6); 0.15 :: digit(7); 0.15 :: digit(8); 0.05 :: digit(9) :- model1.
%0.15 :: digit(0); 0.1 :: digit(1); 0.1 :: digit(2); 0.05 :: digit(3); 0.2 :: digit(4); 0.05 :: digit(5); 0.05 :: digit(6); 0.1 :: digit(7); 0.1 :: digit(8); 0.1 :: digit(9) :- model2.
%0.2 :: digit(0); 0.05 :: digit(1); 0.05 :: digit(2); 0.15 :: digit(3); 0.05 :: digit(4); 0.2 :: digit(5); 0.05 :: digit(6); 0.05 :: digit(7); 0.1 :: digit(8); 0.1 :: digit(9) :- model3.



% to continuum of models (also allows to derive spread on probability parameters)
%

dir_t(_) :: digit(0); dir_t(_) :: digit(1); dir_t(_) :: digit(2); dir_t(_) :: digit(3); dir_t(_) :: digit(4); dir_t(_) :: digit(5); dir_t(_) :: digit(6); dir_t(_) :: digit(7); dir_t(_) :: digit(8); dir_t(_) :: digit(9).



% encoding of digits
%

need(1) :- digit(0).
need(2) :- digit(0).
need(3) :- digit(0).
need(5) :- digit(0).
need(6) :- digit(0).
need(7) :- digit(0).

need(3) :- digit(1).
need(6) :- digit(1).

need(1) :- digit(2).
need(3) :- digit(2).
need(4) :- digit(2).
need(5) :- digit(2).
need(7) :- digit(2).

need(1) :- digit(3).
need(3) :- digit(3).
need(4) :- digit(3).
need(6) :- digit(3).
need(7) :- digit(3).

need(2) :- digit(4).
need(3) :- digit(4).
need(4) :- digit(4).
need(6) :- digit(4).

need(1) :- digit(5).
need(2) :- digit(5).
need(4) :- digit(5).
need(6) :- digit(5).
need(7) :- digit(5).

need(1) :- digit(6).
need(2) :- digit(6).
need(4) :- digit(6).
need(5) :- digit(6).
need(6) :- digit(6).
need(7) :- digit(6).

need(1) :- digit(7).
need(3) :- digit(7).
need(6) :- digit(7).

need(1) :- digit(8).
need(2) :- digit(8).
need(3) :- digit(8).
need(4) :- digit(8).
need(5) :- digit(8).
need(6) :- digit(8).
need(7) :- digit(8).

need(1) :- digit(9).
need(2) :- digit(9).
need(3) :- digit(9).
need(4) :- digit(9).
need(6) :- digit(9).
need(7) :- digit(9).



% encoding of possible failure
%

show(1) :- need(1).
show(2) :- need(2).
show(3) :- need(3).
show(4) :- need(4).
show(5) :- need(5).
show(6) :- need(6).
show(7) :- need(7).

%0.1 :: show(1) :- \+need(1).
%0.1 :: show(2) :- \+need(2).
%0.1 :: show(3) :- \+need(3).
%0.1 :: show(4) :- \+need(4).
%0.1 :: show(5) :- \+need(5).
%0.1 :: show(6) :- \+need(6).
%0.1 :: show(7) :- \+need(7).



% evidence with query
%

query(digit(0)).
query(digit(1)).
query(digit(2)).
query(digit(3)).
query(digit(4)).
query(digit(5)).
query(digit(6)).
query(digit(7)).
query(digit(8)).
query(digit(9)).

query(show(1)).
query(show(2)).
query(show(3)).
query(show(4)).
query(show(5)).
query(show(6)).
query(show(7)).


