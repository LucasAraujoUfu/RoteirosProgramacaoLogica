q(blob,blug).
q(blob,blag).
q(blob,blig).
q(blaf,blag).
q(dang,dong).
q(dang,blug).
q(flab,blog).

/*
?- findall(X,q(blob,X),Lista).
Lista = [blug, blag, blig].

?- findall(X,q(X,blug),Lista).
Lista = [blob, dang].

?- findall(X,q(X,Y),Lista).
Lista = [blob, blob, blob, blaf, dang, dang, flab].

?- bagof(X,q(X,Y),Lista).
Y = blag,
Lista = [blob, blaf] ;
Y = blig,
Lista = [blob] ;
Y = blog,
Lista = [flab] ;
Y = blug,
Lista = [blob, dang] ;
Y = dong,
Lista = [dang].

?- setof(X,Y^q(X,Y),Lista).
Lista = [blaf, blob, dang, flab].


*/
