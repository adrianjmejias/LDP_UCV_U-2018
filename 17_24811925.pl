/*------------------------- Enunciado del Problema
--Dada dos listas, devolver los electos comunes entre ellas

--------------------------------- Explicación
-- Comunes obtiene una lista que muestra los elementos comunes de las dos listas

------------------------------ Llamadas de Ejemplo 
--? comunes([1,6,3],[2,1,8,3],L).
--L=[1,3].

-------------------------------- Resolución
-- Se usan las primitivas intersection, aunque no estoy claro si se tiene que repetir los elementos por lo que usé el sort */

comunes(A,B,L):- intersection(A,B,M), sort(M,L).