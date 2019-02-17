------------------------- Enunciado del Problema
--Dada una lista de enteros, represente su equivalente en notación decimal.
--? rep ( [1,22,4], V).
--V = 1224

--------------------------------- Explicación
	
--Unir todos los elementos de una lista dada representarlo en notación decimal.

------------------------------ Llamadas de Ejemplo 

--rep ([1,2,3], V).
--V = 123.
--rep ([12,34,56], V).
--V = 123456.

-------------------------------- Resolución
--rep([],_,_):-!.
--rep([L|[]],V,M):- concat(V,L,V1), M is V1,!.
--rep([L|Ls],V,M):- concat(V,L,V1), rep(Ls,V1,M), M is V1.
--rep([L,N|Ls],V):- concat(L,N,V1), rep(Ls,V1,M), V is M.