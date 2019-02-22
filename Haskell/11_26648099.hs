------------------------- Enunciado del Problema
-- Escriba una función insertar, que dados una lista no decreciente ys y un elemento y, devuelva una 
-- lista no decreciente igual a ys más el elemento e insertado en el lugar correspondiente.

--------------------------------- Explicación
-- Funcion insertar, inserta un numero dado y en el lugar indicado de la lista ys.
-- insertar :: Int -> [Int]

------------------------------ Llamadas de Ejemplo 
-- > insertar 6 [1,2,3,4,5,7,8,9,10]
-- [1,2,3,4,5,6,7,8,9,10]

-- > insertar 6 [1,2,4,5,8,10]
-- [1,2,4,5,6,8,10]

-------------------------------- Resolución
-- se concantena a Y entre una lista de los numeros menores a Y, y una lista de los numeros mayores a Y.

insertar y ys = [x|x<-ys, x<y]++[y]++[x|x<-ys, x>y]
