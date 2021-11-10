remove(X,[X|Xs],Xs).
remove(X,[Y|Ys],[Y|Z]) :- remove(X,Ys,Z).
