ocorrencias(_,[],0).
ocorrencias(X,[X|Ys],C) :- ocorrencias(X,Ys,C1),C is C1+1,!.
ocorrencias(X,[_|Ys],C) :- ocorrencias(X,Ys,C).
