%a)
sobre(A,mesa).
sobre(B,A).

%b)
% p->q

acima_de(A,B) :- sobre(A,B).

/* c)
?- acima_de(B,mesa).
true .
*/
