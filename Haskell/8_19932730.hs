
------------------------- Enunciado del Problema
-- Escriba una funcion POSICIONES que devuelva una lista de indice de las posiciones de un elemento determinado en una 
-- lista de elemento.

---------------------------- Explicación
-- la funcion posiciones recibe un elemento a, que es el elemento a buscar en la lista [a] y devuelve una lista
-- de posiciones de int [Int]
-- posiciones:: (Eq a) => a -> [a] -> [Int]

------------------------------ Llamadas de Ejemplo 
--Ok, modules loaded: Main.
-- *Main> posiciones 2 [2,3,4,6,2,21,2]
--[0,4,6]
-- *Main> posiciones 21 [2,3,4,6,2,21,2]
-- [5]
-- *Main> 


-------------------------------- Resolución
-- utilice una lista de comprension y aparte de esto la funcion zip que toma cada elemento de la lista y lo
-- compara con x , esto devuelve una tupla , luego comparamos si j es igual al elemento que queremos saber
-- la posicion.

posiciones:: (Eq a) => a -> [a] -> [Int]
posiciones  e x = [i |(j,i) <- zip x [0..length x], j == e]
