------------------------- Enunciado del Problema
--15. Escriba programas en el lenguaje de programación Haskell que le permitan resolver
--cada uno de los siguientes problemas:
--a) Dada dos listas A y B, verificar si eliminando elementos de la lista A se puede
--obtener la lista B.
--b) Dada dos listas A y B, que representan conjuntos, implemente la intersección y
--unión de los mismos.
--c) Dada una lista que representa una matriz, calcule la transpuesta de esta.

--------------------------------- Explicación
-- el15a verifica si todos los elementos de una lista esta en la otra
-- interseccion verifica la interseccion de dos listas buscando los elementos que pertenecen a ambas listas
-- union junta los elementos de dos listas
-- traspuesta realiza mediante la fncion map y foldr la traspuesta de una matriz

------------------------------ Llamadas de Ejemplo 
--el15a [1,21,3,21,1][5,4,3,2,1]
--False
--el15a [5,4,3,2,1,9][5,4,3,2,1]
--True
--interseccion [5,4,3,2,1,9][5,4,3,2,1]
--[5,4,3,2,1]
--union [5,4,3,2,1,9][5,4,3,2,1]
--[5,4,3,2,1,9]

--traspuesta [[1,21,3,21,1],[5,4,3,2,1],[1,2,3,4,5],[1,2,3,2,1]]
--[[1,5,1,1],[21,4,2,2],[3,3,3,3],[21,2,4,2],[1,1,5,1]]

-------------------------------- Resolución

--Ejercicio 15
--15a
el15a::(Eq a)=> [a]->[a]->Bool
el15a _ [] = True
el15a xs (y:ys) = elem y xs && el15a xs ys

--15b
interseccion:: (Eq a)=> [a]->[a]->[a]
interseccion xs ys = [w| w<-xs, elem w ys]

union:: (Eq a)=> [a]->[a]->[a]
union xs ys = interseccion xs ys ++ [w| w<-xs, notElem w ys] ++ [w| w<-ys, notElem w xs]
--15c
traspuesta:: (Eq a)=> [[a]]-> [[a]]
traspuesta x | foldr (&&) True (map null x) = []
             | otherwise = (map head x) : traspuesta (map tail x)

                          