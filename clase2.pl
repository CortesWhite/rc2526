/*
suma de los elementos de una lista

sum_lista(+Lista, -Resultado)
	es cierto si Resultado unifica con 
	la suma de todos los elementos de la Lista

Lista en prolog
[1,2,3]
n0=[]
[Cabeza|Resto] = [1,2,3]
Cabeza = 1
Resto[2,3]

Principio de inducción
1)sum_lista([], 0).
2)sum_lista([Cabeza|Resto], R2):- sum_lista(Resto, R),
	R2 is R + Cabeza.


variables anonimas "_"
para cuando no sea necesario saber que valor tienen porque no hacemos nada con ella

-UNIFICACION(=) e IDENTIDAD(==)
1) dos terminos se unifican si son identicos
	1+1==2; false
	(1+1) == 1+1; true 
	1+(1+1) == 1+1+1; false
2) operador(=)
	1+1 = x; x = 1+1
	x=2+x; x=2+x
3)operador(is) opera solo en la derecha
	2 is 1+1; true
4)operador(=:=) opera en los dos lados
	1+1=:=2*1; true
	x=:=1+1; error, se necesita que x tenga un valor


crear un predicado que diga cuantos elementos hay en la lista
num_elem(+Lista, -Resultado)
es cuerto si Resultado unifica con el n elementos de Lista

Principio induccion
1. num_elem([],0).
2. num_elem([Cabeza|Resto], R2):- num_elem(Resto, R),
	R2 is R+1.
*/

num_elem([],0).
num_elem([Cabeza|Resto], R2):- num_elem(Resto, R),
	R2 is R+1.
