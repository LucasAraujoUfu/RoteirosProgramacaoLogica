fatorial(0,A,A).
fatorial(X,A,F) :- A1 is A*X,X1 is X-1,fatorial(X1,A1,F).
fatorial(X,F) :- fatorial(X,1,F).

narranjos(N,P,R) :- fatorial(N,Fn),NP is N-P,fatorial(NP,Fnp),R is Fn/Fnp.
