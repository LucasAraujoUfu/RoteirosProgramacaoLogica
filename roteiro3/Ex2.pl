intercala1([],Y,X) :- X = Y.
intercala1(Z,[],X) :- X = Z.
intercala1([Z|Zs],[Y|Ys],X) :- intercala1(Zs,Ys,Q),X = [Z,Y|Q]. 
