max(X,Y,Y):- X =< Y.
max(X,Y,X):- X>Y.

max(X,Y,Y) :- X=<Y,!.
max(X,Y,X) :- X>Y.

max(X,Y,Z) :- X=<Y,!,Y=Z.
max(X,Y,X).
