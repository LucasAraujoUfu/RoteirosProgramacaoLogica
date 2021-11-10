disjunto([],_).
disjunto([X|Xs],Y) :- not(member(X,Y)),disjunto(Xs,Y).

uniao(_,_,[]).
uniao(X,Y,[Z|Zs]) :- (member(Z,X);member(Z,Y)),uniao(X,Y,Zs).

intersecao([],_,[]).
intersecao([X|Xs],Y,[X|Z]) :- member(X,Y),intersecao(Xs,Y,Z).
intersecao([_|Xs],Y,Z) :- intersecao(Xs,Y,Z).

diferenca([],_,[]).
diferenca([X|Xs],Y,Z) :- member(X,Y),diferenca(Xs,Y,Z).
diferenca([X|Xs],Y,[X|Z]) :- not(member(X,Y)),diferenca(Xs,Y,Z).
