% ------------------------ Enunciado del Problema
% -- 4. Dada una lista y un elemento, verificar si este pertenece a dicha lista.
% --pertenece (E, LISTA).

% --------------------------------- Explicación
% -- la funcion pertenece verifica si un elemento pertenece a la lista.


% ------------------------------ Llamadas de Ejemplo 
% -- ?- pertenece(3,[3,5,6]).
% --true .


% --?- pertenece(3,[5,6]).
% --false.

% --?- pertenece(3,[5,6,3]).
% --true .

% -------------------------------- Resolución
% -- utilice un elem y una donde primeramente evaluamos si el elemento se encuentra de primero sin importar el resto
% -- luego en la segunda evaluamos si el elemento se encuentra en el resto de la lista 



pertenece(X,[X|_]):-!.
pertenece(X,[_|TS]):-pertenece(X,TS).
