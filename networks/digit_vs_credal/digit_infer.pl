


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



% digit definition
%

1/10 :: digit(0); 1/10 :: digit(1); 1/10 :: digit(2); 1/10 :: digit(3); 1/10 :: digit(4); 1/10 :: digit(5); 1/10 :: digit(6); 1/10 :: digit(7); 1/10 :: digit(8); 1/10 :: digit(9).



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

? :: show(1) :- need(1).
? :: show(2) :- need(2).
? :: show(3) :- need(3).
? :: show(4) :- need(4).
? :: show(5) :- need(5).
? :: show(6) :- need(6).
? :: show(7) :- need(7).

query(need(1)).
query(need(2)).
query(need(3)).
query(need(4)).
query(need(5)).
query(need(6)).
query(need(7)).


