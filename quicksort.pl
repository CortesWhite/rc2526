%-----------------------------------------------------
% divide(+Elem, +Lista, -Menores, -Mayores)
%es cierto cuando Menores unifica con una lista que
%contiene los elemenentos de Lista que son menores
%o iguales que Elem, Mayores unifica con una lista
%que contiene los elementos de Lista que son
%mayores que Elem.
%------------------------------------------------------
divide(_, [], [], []).
divide(E, [Cab|Res], [Cab|Men], Ma) :- E >= Cab, divide(E,Res,Men,Ma).
divide(E, [Cab|Res], Men, [Cab|Ma]) :- E < Cab, divide(E,Res,Men,Ma).

%---------------------------------------------------
% ordena_quick(+Lista, -ListaR).
%es cierto cuando ListaR unifica con una lista que
%contiene los mismos elementos que Lista ordenados
%de menor a mayor.
%--------------------------------------------------

ordena_qs([],[]).
ordena_qs([Cab|Res], LO) :- divide(Cab, Res, Men, Ma), 
							ordena_qs(Men, MenO), 
							ordena_qs(Ma, MaO), 
							append(MenO, [Cab|MaO], LO).