divide([],[],[]).
divide([X|Xs],[X|Ps],Ns):-(X>0;X=:=0),divide(Xs,Ps,Ns).
divide([X|Xs],Ps,[X|Ns]):-X<0,divide(Xs,Ps,Ns).
