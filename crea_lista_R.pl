%predicado dado un numero de lista de n numeros aleatorios
%crea_lista(-N, -Lista)
%lista tam n de numeros aleatorios entre 0 - n

crea_lista(N,Lista) :- crea_lista_r(N,N,Lista).

crea_lista_r(0, _, []).
crea_lista_r(N, R, [X2|Resto]) :- N>0,
					N2 is N - 1,
					crea_lista_r(N2, R, Resto),
					X is random(R),
					X2 is X + 1.