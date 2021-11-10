ocorre([X|_],X,0) :- !.
ocorre([_|Xs],X,Y) :- Y1 is Y-1,ocorre(Xs,X,Y1).
