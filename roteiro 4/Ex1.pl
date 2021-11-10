soma_acum(L,K) :- soma_acum(L,0,K).
soma_acum([],_A,[]).
soma_acum([L|Ls],A,[Z|K]) :- Z is L+A,soma_acum(Ls,Z,K).
