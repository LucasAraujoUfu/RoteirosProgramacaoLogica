somatorio(X,Y):-res_somatorio(X,Y),!.
somatorio(X,Y) :- X1 is X-1,somatorio(X1,Z),Y is X+Z,assert(res_somatorio(X,Y)).

res_somatorio(0,0).
