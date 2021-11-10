pertence(X,[X|_]):-!.
pertence(X,[_|Xs]) :- pertence(X,Xs).

subconjunto([],_) :- !.
subconjunto([X|Xs],Y) :- pertence(X,Y),subconjunto(Xs,Y).
