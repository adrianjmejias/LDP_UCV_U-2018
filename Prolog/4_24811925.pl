/*------------------------- Enunciado del Problema
--Dada una lista y un elemento, verificar si este pertenece a dicha lista.
--pertenece (E, LISTA)

--------------------------------- Explicación
-- La funcion pertenece verifica si un elemento E pertenece a la lista LISTA

------------------------------ Llamadas de Ejemplo 
--? pertenece(1,[1,3,4]).
-- true.

-- > pertenece(1,[2,3,4]).
-- false.

-------------------------------- Resolución
-- creamos una función llamada esta que verifica si el elemento está en la lista recursivamente*/

esta(X,[X|_]).
esta(X,[H|T]):- esta(X,T).
pertenece(E,LISTA):- esta(E,LISTA).