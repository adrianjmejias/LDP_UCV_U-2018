------------------------- Enunciado del Problema
-- Escriba una función dividir, que dados una lista no decreciente xs y un elemento x,
-- devuelva una dupla de dos listas (ys,zs), con xs = ys ++ zs, donde todos los
-- elementos de ys sean menores o iguales que x, y todos los elementos de zs sean
-- mayores que x.

--------------------------------- Explicación
-- Funcion dividir, devuelve partir de una lista de numeros y dado un numero x, una dupla (ys,zs) que contiene
-- con ys una lista de los numeros de xs que son menores o iguales a x, y una lista zs de los numeros de  xs que
-- son mayores a x.
-- dividir :: Int -> [Int]

------------------------------ Llamadas de Ejemplo 
-- > dividir 4 [3,7,8,5,9,2,1,10]
-- [[3,2,1],[7,8,5,9,10]]

-- > dividir 6 [1,2,3,4,5,6,7,8,9,10]
-- [[1,2,3,4,5,6],[7,8,9,10]]

-------------------------------- Resolución
-- Se crea una dupla que en la lista izquierda contiene los y<=x, y en la lista derecha contiene los y>x.

dividir x xs = [[y|y<-xs, y<=x],[y|y<-xs, y>x]]
