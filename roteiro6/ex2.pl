/*Este programa verifica se um número é positivo, negativo ou nulo*/

classe(Numero,positivo) :- Numero > 0,!.
classe(Numero,negativo) :- Numero < 0,!.
classe(0,zero).
