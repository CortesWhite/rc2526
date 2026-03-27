%burbuja(+Lista,-ListaO).
%es cierto cuando listaO unifica
%con Lista pero ordenados de mayor
%a menor.



/*
ordenada(+Lista)
cierto si lista ordenada de 
mayor a menor
*/

ordenada([]).
ordenada([_]).
ordenada([Cab,Cab2|Res]) :- Cab =< Cab2, ordenada([Cab2|Res]).

burbuja(List,List) :- ordenada(List).

burbuja(List, R) :- \+ ordenada(List), append(L1,[E1,E2|L2], List),
	E1 > E2,
	append( L1, [E2, E1|L2], ListN), 
	burbuja(ListN, R).
	
burbuja(List, R) :- \+ ordenada(List), append(_,[E1,E2|_], List),
	E1 =< E2, 
	burbuja(List, R).
	
