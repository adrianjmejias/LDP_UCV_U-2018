/*------------------------- Enunciado del Problema
--Dada un elemento y una lista, armar una lista con todos los elementos
menores que el.

--------------------------------- Explicación
-- elimina los elementos de la lista L que es mayor que N

------------------------------ Llamadas de Ejemplo 
--? menores(3,[2,3,1,7,0],L).
--L=[2,1,0].

-------------------------------- Resolución
-- Usamos la función filter */

menores(N,C,L) :- exclude(=<(N),C,L).