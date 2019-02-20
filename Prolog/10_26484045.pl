%------------------------- Enunciado del Problema
%--Dada una lista, verificar si los elementos de la misma, son iguales.

%--------------------------------- Explicación
	
%--Verificar si todos los elementos de una lista X son identicos

%------------------------------ Llamadas de Ejemplo 

%--sonIguales([5,5,5,5,5]).
%--true.
%--sonIguales([1,1]).
%--true.
%--sonIguales([2,2,2,3]).
%--false.

%-------------------------------- Resolución

%--igual(_,[]):-!.
%--igual(X,[Y|Ys]):- X is Y, igual(Y,Ys).
%--sonIguales([X,Y|Xs]):- X is Y, igual(Y,Xs).
