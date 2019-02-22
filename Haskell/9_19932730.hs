
------------------------- Enunciado del Problema
--Escriba una función elimDobles,dada una lista finita, devuelva una nueva lista,con solamente
--una ocurrencia de cada elemento de la lista original.

---------------------------- Explicación
-- la función elimDobles recibe una lista [a] y devuelve una lista [a]
-- elimDobles::(Eq a) => [a] -> [a]

------------------------------ Llamadas de Ejemplo 
-- *Main> elimDobles [1,2,2,3,4,5,6]
--[1,2,3,4,5,6]
-- *Main> elimDobles [1,2,2]
--[1,2]
-- *Main> 


-------------------------------- Resolución
-- utilice un condicional en el cual si los primeros elemento x e y son iguales True , y  llamamos un caso
-- recursivo donde verificamos si hay dobles en (x:xs) y luego verificamos elimDobles en (y:xs)



elimDobles::(Eq a) => [a] -> [a]
elimDobles [] =[]
elimDobles [x]=[x]
elimDobles (x:y:xs) =if x== y then (elimDobles (x:xs)) else (x:elimDobles (y:xs))