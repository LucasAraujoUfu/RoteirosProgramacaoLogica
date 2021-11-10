f(X) :- X=p,!.
f(X) :- !,X=p.
f(X) :- X=p,!.

/*
?- f(p).
true.

?- f(q).
false.

?- f(r).
false.

?- f(X).
X = p.

*/
