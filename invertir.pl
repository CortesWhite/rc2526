/*
legth([1,2,3,4,5], L).
L=5

length(L1, 3), append(_,L1, [1,2,3,4]).
L1=[2,3,4]
*/

/*
invertir(+Lista, -ListaR) es cierto cuando ListaR
unifica con una lista que contiene los mismos
elementos que Lista en orden inverso.
*/

invertir([], []).
invertir([Cabeza|Resto], LR):- invertir(Resto,R),
	append(R, [Cabeza], LR).
