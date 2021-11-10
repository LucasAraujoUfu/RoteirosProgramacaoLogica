intercala2([],_Y,X) :- X = [].
intercala2(_Z,[],X) :- X = [].
intercala2([Z|Zs],[Y|Ys],X) :- intercala2(Zs,Ys,Q),X=[[Z,Y]|Q].

