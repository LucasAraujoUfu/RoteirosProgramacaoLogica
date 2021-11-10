fatorial(0,A,A).
fatorial(X,A,F) :- A1 is A*X,X1 is X-1,fatorial(X1,A1,F).
fatorial(X,F) :- fatorial(X,1,F).

ncombinacoes(N,P,R) :- fatorial(N,Fn),fatorial(P,Fp),NP is N-P,fatorial(NP,Fnp),R is Fn/(Fp*Fnp).
