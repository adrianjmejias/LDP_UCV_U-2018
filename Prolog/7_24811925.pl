/*------------------------- Enunciado del Problema
--Permitir la conversión entre mayúscula a minúscula.

--------------------------------- Explicación
-- Convierte los textos de una lista a minúsculas, lo asumo cómo lista por el ejemplo que está en la práctica

------------------------------ Llamadas de Ejemplo 
--? may_min(["LenguaJes DE ProGramación"],V).
--V = ["lenguajes de programación"].

-------------------------------- Resolución
-- usamos la primitiva implementada string_lower y se resuelve de forma recursiva */

may_min(N,L):- may_min(N,[],L).
may_min([],V,V).
may_min([H|T],L2,[V|L3]) :- may_min(T,L2,L3), string_lower(H, V).