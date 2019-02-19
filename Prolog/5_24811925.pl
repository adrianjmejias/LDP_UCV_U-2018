/*------------------------- Enunciado del Problema
--SumaAnt(Xs,Ys):- Si Xs = [x1,x2,…,xn], entonces Ys = [y1,y2,…,yn]

--------------------------------- Explicación
-- Primero se suman los elementos de la lista y luego se le suma los elementos de la lista la suma obtenida anteriormente

------------------------------ Llamadas de Ejemplo 
--? sumaAnt([1,2,3],Xs).
--Xs = [7, 8, 9].

-------------------------------- Resolución
-- usamos algunas primitivas implementadas en Prolog (sum_list y maplist) */

sumaAnt(L,V):- sum_list(L,SL), maplist(plus(SL),L,V).