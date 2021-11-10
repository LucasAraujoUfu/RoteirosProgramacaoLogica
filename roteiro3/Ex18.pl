remove(X,[X|Xs],Xs).
remove(X,[Y|Ys],[Y|Z]) :- remove(X,Ys,Z).

permutacao([],[]).
permutacao(Xs,[Y|Zs]) :- remove(Y,Xs,Ys),permutacao(Ys,Zs).

/*
a)
?- permutacao([a,m,o,r],X).

b)
permutacao(['Sérgio','Adriano','Fabíola'],X).
*/
