%concatena(?lista, ?lista2, ?listaR).
%cierto cuando listar unifica a 
%las lista1 seguida de la lista2

concatena([],Lista,Lista).
concatena([Cab|Res], Lista2, [Cab|R]):-concatena(Res, Lista2, R).
	