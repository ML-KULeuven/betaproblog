


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



% compare discrete finite set of models
%

%? :: model1; ? :: model2; ? :: model3.

%0.1 :: digit(0); 0.1 :: digit(1); 0.05 :: digit(2); 0.05 :: digit(3); 0.2 :: digit(4); 0.05 :: digit(5); 0.1 :: digit(6); 0.15 :: digit(7); 0.15 :: digit(8); 0.05 :: digit(9) :- model1.
%0.15 :: digit(0); 0.1 :: digit(1); 0.1 :: digit(2); 0.05 :: digit(3); 0.2 :: digit(4); 0.05 :: digit(5); 0.05 :: digit(6); 0.1 :: digit(7); 0.1 :: digit(8); 0.1 :: digit(9) :- model2.
%0.2 :: digit(0); 0.05 :: digit(1); 0.05 :: digit(2); 0.15 :: digit(3); 0.05 :: digit(4); 0.2 :: digit(5); 0.05 :: digit(6); 0.05 :: digit(7); 0.1 :: digit(8); 0.1 :: digit(9) :- model3.



% to continuum of models (also allows to derive spread on probability parameters)
%

%0 :: digit(0); 0.301 :: digit(1); 0.176 :: digit(2); 0.125 :: digit(3); 0.097 :: digit(4); 0.079 :: digit(5); 0.067 :: digit(6); 0.058 :: digit(7); 0.051 :: digit(8); 0.046 :: digit(9).

0.1 :: digit(0); 0.1 :: digit(1); 0.1 :: digit(2); 0.1 :: digit(3); 0.1 :: digit(4); 0.1 :: digit(5); 0.1 :: digit(6); 0.1 :: digit(7); 0.1 :: digit(8); 0.1 :: digit(9).



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

0.6 :: show(X) :- need(X).



% evidence with query
%

query(need(1)).
query(need(2)).
query(need(3)).
query(need(4)).
query(need(5)).
query(need(6)).
query(need(7)).

query(show(1)).
query(show(2)).
query(show(3)).
query(show(4)).
query(show(5)).
query(show(6)).
query(show(7)).


