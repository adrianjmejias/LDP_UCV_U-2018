
------------------------- Enunciado del Problema
-- Definir una función que dada una lista xs y un elemento z, y recorriendo la lista xs una
-- sola vez, obtenga el par formado por:
-- a) La lista que resulta de quitar en xs todas las apariciones de z.
-- b) El número de apariciones de z en xs.


---------------------------- Explicación
-- tenemos un elemento a con una lista [a] de tipo a y devuelve una tupla con un elemento y una lista de tipo a
-- quitar::(Eq a)=>a->[a]->(Int,[a])
-- luego tenemos una funcion suma donde esta la lista y devuelve la suma de los elemento de la lista
-- sumar::[a]->Int

------------------------------ Llamadas de Ejemplo 
--Ok, modules loaded: Main.
-- *Main> 
-- quitar 2 [1,2,3,2]
-- (2,[1,3])
-- *Main> 
-- quitar 21 [1,21,3,2]
-- (1,[1,3,2])

-------------------------------- Resolución
-- primeramente tenemos una uncion sumar , que va a sumar o contar las apariciones del elemento que aparece repetido
-- en la lista , y luego tenemos la funcion quitar, las repeticiones del elemento  

quitar::(Eq a)=>a->[a]->(Int,[a])
quitar _ [] =(0,[])
quitar n (x:xs)=(sumar(filter (==n)(x:xs)),filter(/=n)(x:xs))

sumar::[a]->Int
sumar [] = 0
sumar (x:xs)= 1+sumar(xs)
