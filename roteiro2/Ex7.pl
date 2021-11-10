duasVezes([],[]).
duasVezes([X|Xs],Y) :- duasVezes(Xs,Z),Y = [X,X|Z].
