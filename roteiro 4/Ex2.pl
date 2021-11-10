soma_ate(X,Z) :- soma_ate(X,0,Z).
soma_ate(0,A,A).
soma_ate(X,A,Z) :- X1 is X-1,A1 is A+X,soma_ate(X1,A1,Z).
