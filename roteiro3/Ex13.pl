minAcum([],A,A).
minAcum([X|Xs],A,L) :- X<A,minAcum(Xs,X,L).
minAcum([X|Xs],A,L) :- X>=A,minAcum(Xs,A,L).

min([X|Xs],Y) :- minAcum(Xs,X,Y).
