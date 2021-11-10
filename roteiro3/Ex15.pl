prodEsc([],Y,X) :- X is 0.
prodEsc(Y,[],X) :- X is 0.
prodEsc([Z|Zs],[Y|Ys],X) :- prodEsc(Zs,Ys,Q),P is Z*Y,X is P+Q.
