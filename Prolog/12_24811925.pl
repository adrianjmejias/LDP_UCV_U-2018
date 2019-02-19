/*------------------------- Enunciado del Problema
--Se desea que usted realice con el Lenguaje de Programación Prolog, un
--programa que dado dos conjuntos; representados cada uno como una lista,
--devuelva la diferencia simétrica entre ellos. La diferencia simétrica en conjuntos
--está definida matemáticamente como:
--AΔB= (A-B)U(B-A) = (AUB) – (A∩ B)

--------------------------------- Explicación
-- La función difSime aplica la diferencia simétrica de dos conjuntos

------------------------------ Llamadas de Ejemplo 
--? difSime([2, 6, 4, 8, 7, 10], [9, 3, 7, 11], D).
--DS = [2, 6, 4, 8, 10, 9, 3, 11].

-------------------------------- Resolución
-- usamos las primitivas de union, intersección y diferencia implementadas en Prolog */

difSime(A,B,L) :- union(A,B,C), intersection(A, B, D), subtract(C,D,L).