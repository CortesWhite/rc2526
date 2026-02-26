/*
member(X,[1,2,3,4]).
x=1;
X=2;
X=4.


pertenece(?elem,lista)
	es cierto si elem pertenece a la lista
	
Induccion 
1.P(n0)
2. para todo n>n0, P(n-1) -> P(n)


pertenece(E,[E|_]).
pertenece(E, [_|Resto]):-pertenece(E,Resto).

*/
/*
bagof(E, pertenece(E,[1,2,3,4,5,6]), Lista)
mete todas las soluciones de E en la lista
*/
