remove(X,[X|Xs],Xs).
remove(X,[Y|Ys],[Y|Z]) :- remove(X,Ys,Z).

insere(X,Y,L) :- remove(X,L,Y). 
