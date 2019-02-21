------------------------- Enunciado del Problema
--5. Sea la siguiente definición de función:
--mifun s = foldr op 0 s
--where op x r = head x + r
--a) ¿Cuál es el tipo de datos de mifun?
--b) ¿Cuál es el resultado de evaluar mifun [[1,2,3],[2,4],[3,5]]?
--c) ¿Cuál de las definiciones siguientes es una definición alternativa equivalente?
--(Def 1) mifun
--(Def 2) mifun
--(Def 3) mifun
--s = sum (map head s)
--s = map op s
--where op x r = head x + r
--[] = 0
--mifun (x:xs) = x + mifun xs

-------------------------------- Resolución

mifun :: [[Integer]]->Integer
mifun s = foldr op 0 s
where op x r = head x + r                 