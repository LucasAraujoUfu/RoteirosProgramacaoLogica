bissexto(X) :- 0 is mod(X,400).
bissexto(X) :- 0 =\= mod(X,100),0 is mod(X,4). 
