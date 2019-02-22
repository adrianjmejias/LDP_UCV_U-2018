/*------------------------- Enunciado del Problema
--Dada una lista y una posición, eliminar los N primeros elementos de una
lista y devuelve el resto.

--------------------------------- Explicación
-- elimN quita los primeros N elementos de una lista

------------------------------ Llamadas de Ejemplo 
--? elimN([1,3,5,1,2],2,L).
--L=[5,1,2].

-------------------------------- Resolución
-- usamos la función length y append de manera que quite los N elementos de la lista */

elimN(L,0,L).
elimN(A,N,L):-length(X,N),append(X,L,A).