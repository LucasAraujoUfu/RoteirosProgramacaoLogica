multiEsc(_,[],Z) :- Z = [].
multiEsc(X,[Y|Ys],Z) :- multiEsc(X,Ys,Q),P is X*Y,Z=[P|Q].
