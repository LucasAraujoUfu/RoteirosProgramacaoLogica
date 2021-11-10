segmento(X,Y) :- append(X,_,Y).
segmento(X,[_|Ys]) :- segmento(X,Ys).
