%------------------------- Enunciado del Problema
%-- Dada una lista, verificar si los elementos de la misma, son iguales.

%--------------------------------- Explicación
%-- Funcion verificar, hace llamado a otra funcion con un parametro adicional que  contiene el primer elemento.
%-- Funcion verif, realiza todo el trabajo de verificar si los siguientes elementos de la lista son iguales que el primero

%------------------------------ Llamadas de Ejemplo 
%-- > Ejemplo: verificar([1,1,1,1,1,1,1,1]).
%              true

%              verificar([1,1,1,1,1,1,2,1]).
%              false

%-------------------------------- Resolución
%-- Tomo el primer elemento y lo paso a otra funcion que se encarga de iterar en la lista verificando que sea igual al primer elemento

verificar([]) :- true.
verificar([H|T]) :- verif(H,T).

verif(_,[]) :- true.
verif(X,[H|T]) :- X == H, verif(X,T).