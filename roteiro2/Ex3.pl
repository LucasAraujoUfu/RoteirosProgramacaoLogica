% Ex 3
deCarro(auckland,hamilton).
deCarro(hamilton,raglan).
deCarro(valmont,saarbruecken).
deCarro(valmont,metz).
deTrem(metz,frankfurt).
deTrem(saarbruecken,frankfurt).
deTrem(metz,paris).
deTrem(saarbruecken,paris).
deAviao(frankfurt,bangkok).
deAviao(frankfurt,singapore).
deAviao(paris,losAngeles).
deAviao(bangkok,auckland).
deAviao(losAngeles,auckland).

viagem(X,Y) :- deCarro(X,Y).
viagem(X,Y) :- deTrem(X,Y).
viagem(X,Y) :- deAviao(X,Y).

viagem(X,Y) :- deCarro(X,Z),viagem(Z,Y).
viagem(X,Y) :- deTrem(X,Z),viagem(Z,Y).
viagem(X,Y) :- deAviao(X,Z),viagem(Z,Y).

% Ex. 4

viagem(X,Y,vai_de(X,Y)) :- deCarro(X,Y).
viagem(X,Y,vai_de(X,Y)) :- deTrem(X,Y).
viagem(X,Y,vai_de(X,Y)) :- deAviao(X,Y).

viagem(X,Y,vai_de(X,Z,A)) :- deCarro(X,Z),viagem(Z,Y,A).
viagem(X,Y,vai_de(X,Z,A)) :- deAviao(X,Z),viagem(Z,Y,A).
viagem(X,Y,vai_de(X,Z,A)) :- deTrem(X,Z),viagem(Z,Y,A).

% Ex. 5

viagem(X, Y, vai(carro,X,Y)) :- deCarro(X,Y).
viagem(X, Y, vai(trem,X,Y)) :- deTrem(X,Y).
viagem(X, Y, vai(aviao,X,Y)) :- deAviao(X,Y).

viagem(X, Y, vai_de(carro,X,Z,A)) :- deCarro(X,Z),viagem(Z,Y,A).
viagem(X, Y, vai_de(trem,X,Z,A)) :- deTrem(X,Z),viagem(Z,Y,A).
viagem(X, Y, vai_de(avião,X,Z,A)) :- deAviao(X,Z),viagem(Z,Y,A).

