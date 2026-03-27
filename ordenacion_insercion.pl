%insertar elemento en una lista

insertar(E1,[],[E1]).
insertar(E,[Cab|Res],[E,Cab|Res]) :- E =< Cab.
insertar(E,[Cab|Res],[Cab|R]) :- E > Cab, insertar(E,Res,R).

%ordenacion por insercion

ordena_ins([],[]).
ordena_ins([Cab|Res], LO) :- ordena_ins(Res, L), insertar(Cab, L, LO).
