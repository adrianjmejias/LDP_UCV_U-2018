------------------------- Enunciado del Problema
--19. Escribir una función m_Sublista:: Eq a => [a] -> a -> [[a]] que
--reciba una lista de elementos de cualquier tipo y un elemento “e”, del mismo tipo de
--dato, obtener un lista de lista de elementos, donde cada sublista esta determinada por los
--elementos que se encuentran entre los elementos que sean iguales a “e”.

--------------------------------- Explicación


------------------------------ Llamadas de Ejemplo 
--m_Sublista [1, 2, 3, 1, 4, 2, 1, 5,7] 1  
--[[], [2,3], [4,2], [5,7]]
--m_Sublista [1, 2, 3, 1, 4, 2, 1, 5, 7,2] 2 
--[[1], [3, 1,4], [1, 5,7], []]

-------------------------------- Resolución

m_Sublista:: (Eq a)=>[a]->a->[[a]]
m_Sublista [] _ = []
m_Sublista (x:xs) a | x==a = [] : traza (x:xs) a
                    | otherwise = if elem a (x:xs) then mitad (x:xs) a : traza xs a else []
                    
traza::(Eq a)=>[a]->a->[[a]]
traza [] _= []
traza (x:xs) a | x==a = mitad xs a : traza xs a
               | otherwise = traza xs a

mitad:: (Eq a)=>[a]->a->[a]
mitad [] _ = []
mitad (x:xs) a | x/=a = x: mitad xs a
               | otherwise = []

                          