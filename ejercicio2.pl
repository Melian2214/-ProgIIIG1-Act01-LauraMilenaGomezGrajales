estadounidense(coronel).
nacion(corea).
nacion(estados).
misil(misil).
enemigos(corea, estados).
tener(corea, misil).
venta(coronel, misil, corea).

hostil(N) :- enemigos(N, estados).
arma(M) :- misil(M).
criminal(C) :- estadounidense(C), arma(M), hostil(N),venta(C,M,N), tener(N,M).
