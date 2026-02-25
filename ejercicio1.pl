persona(abraham). persona(mona).
persona(clancy). persona(jacquelin).
persona(herbert). persona(homero).
persona(marge). persona(patty). persona(selma).
persona(bart). persona(lisa). persona(maggie).
persona(ling).

hijo(abraham, herbert). hijo(mona, herbert).
hijo(abraham, homero). hijo(mona, homero).
hijo(clancy, marge). hijo(jacquelin, marge).
hijo(clancy, patty). hijo(jacquelin, patty).
hijo(clancy, selma). hijo(jacquelin, selma).
hijo(homero, bart). hijo(marge, bart).
hijo(homero, lisa). hijo(marge, lisa).
hijo(homero, maggie). hijo(marge, maggie).
hijo(selma, ling).

padre(P, H) :- hijo(P, H).
madre(M, H) :- hijo(M, H).
abuelo(A, X) :- hijo(A, P), hijo(P, X).
abuela(A, X) :- hijo(A, P), hijo(P, X).
nieto(X, A) :- abuelo(A, X).
nieto(X, A) :- abuela(A, X).
hermanos(X, Y) :- hijo(P, X), hijo(P, Y), X \= Y.
tio(X, Y) :- hermanos(X, P), hijo(P, Y).
sobrino(X, Y) :- tio(Y, X).
primos(X, Y) :- hijo(P1, X), hijo(P2, Y), hermanos(P1, P2), X \= Y.
