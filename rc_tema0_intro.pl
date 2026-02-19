/*
si llueve(antecedente)-> se riegan las plantas(consecuente)
(todo es una regla)
llueve seria un hecho

En prolog:
(consecuente):-(antecedente)
*/

#logica primer orden
/*
natural(Numero)
Es cierto cuando Numero unifica con un numero natural

natural(1). (1 es natural)
natural(N):- N > 1, N2 is N-1, natural(N2).
*/

/*
Principio de inducción matemático
(para aplicarlo se necesita que haya un orden como en listas o enteros)
Sea S un conjunto ordenable y n0 el elemento mas pequeño de S
Quiero demostrar que la propiedad P se cumple para todo elemento del conjunto S

1. P es cierta para n0
2. Para todo elemento mayor que n0, Si P(N-1) es cierto también lo será P(N)
*/

/*
para igualar usar is
para comparar =
natural(5).
	true
natural(-1).
	false

*/