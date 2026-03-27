%------------------------------------------------------
% mas_veces(+Lista, -Elem, -Num)
%es cierto cuando Elem unifica con el elemento
%que se repite más veces en la lista Lista
%y Num unifica con el número de veces que se
%repite dicho elemento.
%------------------------------------------------------



/*
comprime(Lista, -R)
cierto si R unifica con una lista
con el siguiente formato
comprime([a,a,b,b,b,c,d,d,a], R)
R = [(a,2),(b,3),(c,1),(d,2),(a,1)]
*/

comprime([], []).
comprime([E], [(E,1)]).

comprime([Cab,Cab2|Res], [(Cab2,N)|R]) :- Cab == Cab2,
											comprime([Cab2|Res], [(Cab2,N2)|R]),
											N is N2 + 1.
											

comprime([Cab, Cab2|Res], [(Cab,N)|R]) :- Cab \= Cab2,
											comprime([Cab2|Res], R),
											N = 1.
