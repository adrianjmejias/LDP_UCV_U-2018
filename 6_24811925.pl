/*------------------------- Enunciado del Problema
--Dada una lista de enteros, represente su equivalente en notación decimal.

--------------------------------- Explicación
--La función rep convierte una lista de números en un número decimal
-- frac convierte un número en una lista que contiene sus dígitos, p.e. 23->[2,3]
-- sep mapea los elementos de la lista aplicando la función frac, p.e. [1,22,3]->[[1], [2, 2], [3]]
-- tep anida los elementos de la lista creando un número aunque se multiplica por 10, pe [1,2,3]->1230
-- head2, tail2, producto y suma estan trivialmente explicadas por sus nombres y son fundamentales para frac.

------------------------------ Llamadas de Ejemplo 
--? rep ( [1,22,4], V).
--V = 1224.

--? frac(23,L).
-- L = [2, 3] .

--? sep([1,2,3],L).
--L = [[1], [2, 2], [3]].

--? tep([1,2,3],L).
--L = 1230.

-------------------------------- Resolución
-- De una lista A, usamos sep para crear otra lista que separe todos sus dígitos, aunque salga una lista de listas, usamos el flatten,
-- luego se anidan los digitos usando el tep y por último se divide entre 10 */

head2([H|T],H).
tail2([H|T],T).
producto(A,B,O):- O is A * B.
potencia(A,B,O):- O is A ** B.

frac(N,L) :- frac(N,[],L).
frac(A,L,[A|L]) :- A < 10.
frac(N,L,R):- 
    N > 9,
    X is N mod 10,
    Y is N // 10,  
    frac(Y,[X|L],R).
	
sep(A,L) :- sep(A,[],L).
sep([],L,L).
sep([H|T],L2,[V|L3]) :- sep(T,L2,L3), frac(H, V).

tep([],0).
tep(L,V):- length(L,Size), potencia(10,Size,Sid), maplist(producto(Sid),L,LM), head2(LM,LMH), tail2(L,LT), tep(LT,V1), V is V1+LMH.

rep(A,L) :- sep(A,B), flatten(B,C), tep(C,F), L is div(F, 10).