persona(abraham). persona(mona).
persona(clancy). persona(jacquelin).
persona(herbert). persona(homero).
persona(marge). persona(patty). persona(selma).
persona(bart). persona(lisa). persona(maggie).
persona(ling).

hijo(abraham, hebert). hijo(mona, hebert).
hijo(abraham, homero). hijo(mona, homero).
hijo(clancy, marge). hijo(jacquelin, marge).
hijo(clancy, patty). hijo(jacquelin, patty).
hijo(clancy, selma). hijo(jacquelin, selma).
hijo(homero, bart). hijo(marge, bart).
hijo(homero, lisa). hijo(marge, lisa).
hijo(homero, maggie). hijo(marge, maggie).
hijo(homero, ling). hijo(marge, ling).

padre(X, P):- hijo(P, X).
madre(X, M):- hijo(M, X).

abuelo(AP, X):- padre(P,AP), hijo(P,X).
abuela(AM, X):- madre(M,AM), hijo(M,X).
