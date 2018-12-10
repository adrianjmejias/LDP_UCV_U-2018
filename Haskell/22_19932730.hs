------------------------- Enunciado del Problema
-- Escriba una función prodCart que dado dos listas retorne una lista de duplas resultante de realizar el producto 
-- cartesiano entre las dos listas.

---------------------------- Explicación
-- la funcion prodCart recibe dos lista , una es [a] y la otra es [b] la cual retorna una lista de tupla [(a,b)]
-- prodCart::(Eq a, Eq b) => [a] -> [b] -> [(a,b)]

------------------------------ Llamadas de Ejemplo 
-- *Main> prodCart [1,2] [2,3]
--[(1,2),(1,3),(2,2),(2,3)]
-- *Main> prodCart [4,2,3] [2,3,5]
-- [(4,2),(4,3),(4,5),(2,2),(2,3),(2,5),(3,2),(3,3),(3,5)]


-------------------------------- Resolución
-- utilice una lista de compresion en la cual , se esta recibiendo una lista xs y una lista ys , donde x e y son 
-- el par ordenado (x,y).



prodCart::(Eq a, Eq b) => [a] -> [b] -> [(a,b)]
prodCart [] _ = []
prodCart _ [] = []
prodCart xs ys =[(x,y)|x <- xs, y <- ys ]
