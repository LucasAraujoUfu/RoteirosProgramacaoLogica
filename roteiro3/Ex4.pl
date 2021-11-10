intercala3([],_Y,X) :- X = [].
intercala3(_Z,[],X) :- X = [].
intercala3([Z|Zs],[Y|Ys],X) :- intercala3(Zs,Ys,Q),X=[junta(Z,Y)|Q].

