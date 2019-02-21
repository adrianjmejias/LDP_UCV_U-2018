------------------------- Enunciado del Problema
--20. Realice una función m_Matriz :: [[Int]] -> [[Int]] -> [[Int]] que
--permita realizar la multiplicación de dos matrices NxM y MxO. (Sugerencias: Realice
--primero la multiplicación de una matriz por un vector. La matriz de entrada es valida).

--------------------------------- Explicación
-- multivm se encarga de multiplicar matri por vector
-- ppunto se encarga de multiplicar vecto por vector

------------------------------ Llamadas de Ejemplo 
--multiMX [[1,2,3,4],[5,6,7,8],[9,10,11,12]] [[1,5,10],[2,6,11],[3,7,12],[4,8,13]]
--[[30,70,120],[70,174,304],[110,278,488]]

-------------------------------- Resolución

multiMX:: [[Int]]->[[Int]]->[[Int]]
multiMX [] ys =[]
multiMX (x:xs) ys = multiVM x (traspuesta ys): multiMX xs ys 


multiVM:: [Int]->[[Int]]->[Int]
multiVM _ [] = []
multiVM xs (y:ys) = ppunto xs y : multiVM xs ys

ppunto:: [Int]->[Int]->Int
ppunto [] [] = 0
ppunto (x:xs) (y:ys) = x*y+ ppunto xs ys

traspuesta:: (Eq a)=> [[a]]-> [[a]]
traspuesta x | foldr (&&) True (map null x) = []
             | otherwise = (map head x) : traspuesta (map tail x)                  