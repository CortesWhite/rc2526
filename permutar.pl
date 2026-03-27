
insertar_todas(E, List, [E|List]).
insertar_todas(E, [Cab|Res], [Cab|R]) :- insertar_todas(E, Res, R).

%--------------------------------------------------
% permuta(Lista, ListaR).
% es cierto cuando ListaR unifica con una lista
% que contiene los elementos de Lista en orden
% distinto. Este predicado genera todas las
% istas posibles por backtraking.
%--------------------------------------------------

permuta([], []).
permuta([Cab|Res], List) :- permuta(Res, List2),
							insertar_todas(Cab, List2, List).