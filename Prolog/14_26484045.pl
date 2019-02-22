
------------------------- Enunciado del Problema
--Dada una lista y una posición, eliminar los N primeros elementos de una lista y devuelve el resto.
--Ejemplo:
--elimN([1,3,5,1,2],2,L).
--L=[5,1,2]

--------------------------------- Explicación
	
	--Eliminar los N primeros números según el segundo parámetro dado y retornar el resultado.

------------------------------ Llamadas de Ejemplo 

--elimN([5,1,2],1,L).
--L=[1,2].
--elimN([5,1,2],2,L).
--L=[2].
--elimN([4,5,6,7],2,L).
--L=[6,7].

-------------------------------- Resolución

--eliminar(X,0,L):- L is X,!.
--eliminar([_|Xs],N,L):- N1 is N - 1, eliminar(Xs,N1,L1), L is L1.
--elimN([_|Xs],N,L):- N =\= 0, N1 is N - 1, eliminar(Xs,N1,L1), L is L1.