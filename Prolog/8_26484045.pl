------------------------- Enunciado del Problema
--subeYbaja (Xs):- se cumple si Xs tiene forma ascendente y descendente, (creciente hasta un elemento y 
--decreciente desde el mismo hasta el final de la lista).
--? subeYbaja ([1,2,3,4,3,2,1]).
--yes

--------------------------------- Explicación
	
--Se debe verificar si una lista de números a partir del primer elemento es creciente hasta un número tope y a partir de ese número 
--debe decrecer hasta el final de la lista.

------------------------------ Llamadas de Ejemplo

--subeYbaja ([1,2,3,4,3,2,1]).
--true.
--subeYbaja ([7,8,9,8,7]).
--true.
--subeYbaja ([1,2,3,3,2,1]).
--false.
--subeYbaja ([1,2,4,2,5]).
--false.

-------------------------------- Resolución

--baja(_,[]):-!.
--baja(X,[Y|Ys]):- Y is X - 1, baja(Y,Ys).
--sube(X,[Y|Ys]):- Y is X - 1, baja(Y,Ys).
--sube(X,[Y|Ys]):- Y is X + 1, sube(Y,Ys).
--subeYbaja([X,Y|Xs]):- Y is X + 1, sube(Y,Xs).