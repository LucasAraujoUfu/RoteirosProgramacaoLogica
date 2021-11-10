somaUm([],X) :- X = [].
somaUm([X|Xs],Y) :- somaUm(Xs,Q),P is X+1, Y = [P|Q].
