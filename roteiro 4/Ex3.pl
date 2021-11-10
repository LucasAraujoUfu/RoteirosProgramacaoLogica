dec_para_bin(0,[0],_):-!.
dec_para_bin(N,[Z|Zs],_) :- Z is mod(N,2),N1 is N//2,dec_para_bin(N1,Zs,_). 

dec_para_bin(N,X) :- dec_para_bin(N,Xs,_),reverse(Xs,[_|X]).
