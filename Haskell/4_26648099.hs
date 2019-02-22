------------------------- Enunciado del Problema
-- Escriba una función noDoble que dada una cadena de caracteres retorne como
-- resultado la misma cadena de caracteres eliminando los caracteres
-- repetidos dos o más veces de manera consecutiva.

--------------------------------- Explicación
-- Funcion noDoble, elimina los caracteres repetidos que se encuentren de forma consecutiva.
-- noDoble :: String -> String

------------------------------ Llamadas de Ejemplo 
-- > noDoble "abccccfabaddeff"
-- abcfabadef

-- > noDoble "ddddsafffabadcvsss"
-- dsafabadcvs

-------------------------------- Resolución
-- Se separa el string caracter a caracter, comparando el caracter actual con el siguiente caracter 
-- del string, de ser diferentes se introduce el caracter tomado en un nuevo string que sera el resultante 
-- y se vuelve a repetir el proceso hasta que no queden caracteres en el string; de ser iguales el caracter
-- actual es saltado y se continua el proceso de selección.

noDoble [] = []
noDoble [x] = [x]
noDoble (x:xs) = if x==head(xs) then noDoble(xs) else x:noDoble(xs)