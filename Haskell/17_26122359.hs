------------------------- Enunciado del Problema
---17. Diremos que una matriz es palíndrome según el eje horizontal, si todas sus columnas
--son palíndromos (se leen igual de izquierda a derecha que al revés). 
--Escribe una función esPalHor, que dada una Matriz compruebe si es palíndrome
--según el eje horizontal.

--------------------------------- Explicación


------------------------------ Llamadas de Ejemplo 
--esPalHor [[1,2,2,1],[3,7,9,9],[3,7,9,9],[1,2,2,1]]
--True

-------------------------------- Resolución

esPalHor :: (Eq a)=>[[a]]->Bool
esPalHor xs = espalAux $ traspuesta xs

espalAux ::(Eq a)=>[[a]]->Bool
espalAux []= True
espalAux (x:xs) = pal x && espalAux xs

pal::(Eq a)=>[a]->Bool
pal x = x==reverse x

traspuesta:: (Eq a)=> [[a]]-> [[a]]
traspuesta x | foldr (&&) True (map null x) = []
             | otherwise = (map head x) : traspuesta (map tail x)

                          