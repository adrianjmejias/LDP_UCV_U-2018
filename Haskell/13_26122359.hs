------------------------- Enunciado del Problema
--14. Una lista de enteros es palíndrome, si cada uno de los números que la conforman son
--palíndromes y además la lista se puede leer de derecha a izquierda y viceversa, es decir,
--[1,2,3,2,1] es palíndrome, pero [1,21,3,21,1] no, ya que 21 no es palíndrome, [1,2,3,4,5]
--tampoco porque [1,2,3,4,5] es diferente de [5,4,3,2,1]. Se quiere que Ud. Implemente un
--predicado getPals(L), que reciba como entrada una lista de listas de enteros
--([[Int]]) y retorne una lista de listas con todas aquellas listas que sean palíndromes.

--------------------------------- Explicación
-- pall verifica si una de las cadenas es palindromo
-- getPals verifica cada una de las cadenas

------------------------------ Llamadas de Ejemplo 
--getPals [[1,21,3,21,1],[5,4,3,2,1],[1,2,3,4,5],[1,2,3,2,1]]
--[[1,21,3,21,1]]

-------------------------------- Resolución

getPals:: [[Int]]-> [[Int]]
getPals [] = []
getPals (x:xs) | pall x && pass x = x: getPals xs
               | otherwise = getPals xs

pall:: [Int]-> Bool
pall xs = xs==reverse xs

pass:: [Int]-> Bool
pass [] = True
pass (x:xs) = (show x == reverse (show x)) && pass xs 
                          