------------------------- Enunciado del Problema
-- 10. Escriba una función dividir, que dados una lista no decreciente xs y un elemento x,
-- devuelva una dupla de dos listas (ys,zs), con xs = ys ++ zs, donde todos los
--elementos de ys sean menores o iguales que x, y todos los elementos de zs sean
--mayores que x.

--------------------------------- Explicación


------------------------------ Llamadas de Ejemplo 
--dividir 3 [5,3,3,2,1]
-- Salida ([1,2],[5])

-------------------------------- Resolución

dividir :: (Eq a,Ord a)=> a -> [a] -> ([a],[a])
dividir s xs = subDividir s xs  ([],[])

subDividir :: (Eq a, Ord a)=> a -> [a] -> ([a],[a]) -> ([a],[a])
subDividir _ [] (a,b) = (a,b) 
subDividir s (x:xs) (a,b) | x<s = subDividir s xs  (x:a,b)
                          | x>s = subDividir s xs  (a,x:b)
                          | otherwise = subDividir s xs (a,b)
                          