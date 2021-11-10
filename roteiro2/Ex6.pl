tradução(eins, um).
tradução(zwei, dois).
tradução(drei, tres).
tradução(vier, quatro).
tradução(fünf, cinco).
tradução(sechs, seis).
tradução(sieben, sete).
tradução(acht, oito).
tradução(neun, nove).

traduz_lista([],[]).
traduz_lista([X|Xs],Y) :- tradução(X,Z), Y is [Z|traduz_lista(Xs)].
