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
