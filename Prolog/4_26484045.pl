%------------------------- Enunciado del Problema
%--Dada una lista y un elemento, verificar si este pertenece a dicha lista.
%--pertenece (E, LISTA).

%--------------------------------- Explicación
	
%--Arrojar true si dado un elemento E está dentro de la lista LISTA, sino arrojar false.


%------------------------------ Llamadas de Ejemplo 

%--Verificar si 4 está dentro de [1,2,3,4].
%--pertenece(4,[1,2,3,4]).
%--true.
%--Verificar si 5 está dentro de [1,2,3,4].
%--pertenece(5,[1,2,3,4]).
%--false.

%-------------------------------- Resolución
	
verificar(_,[]):- fail.
verificar(N,[L|Ls]):- N =\= L,!.
verificar(N,[L|Ls]):- verificar(N,Ls).
pertenece(E,LISTA):- verificar(E,LISTA).
