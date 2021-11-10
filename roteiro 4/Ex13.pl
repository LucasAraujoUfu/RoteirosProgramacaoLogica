s(A-C) :- sn(A-B),sv(B-C).
sn(A-C) :- det(A-B),n(B-C).
sv(A-C) :- v(A-B),sn(B-C).
sv(A-C) :- v(A-C).
det([o|P]-P).
det([a|P]-P).
n([homem|P]-P).
n([homem|P]-P).
n([bola|P]-P).
v([chuta|P]-P).
