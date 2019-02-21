------------------------- Enunciado del Problema
--12. Escriba una función unico, que dada una lista devuelva una lista que contenga
--exactamente los elementos que se encuentran solamente una vez en la lista dada.

--------------------------------- Explicación
-- funcion desaparecer elimina el caracter de la cadena

------------------------------ Llamadas de Ejemplo 
--unico "Cuales son las letras unicas en esta frase?"
--"Coicf?"

-------------------------------- Resolución

unico:: [Char]-> [Char]
unico [] = []
unico (x:xs) | notElem x xs = x: unico xs 
             | otherwise = unico (desaparecer x xs)
            
desaparecer :: Char->[Char]->[Char]
desaparecer _ [] = []
desaparecer car (x:xs) |x==car = desaparecer car xs
                       |otherwise = x: desaparecer car xs
                          