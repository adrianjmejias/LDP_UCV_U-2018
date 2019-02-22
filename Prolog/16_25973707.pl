%------------------------- Enunciado del Problema
%-- Dada un elemento y una lista, armar una lista con todos los elementos menores que el.

%--------------------------------- Explicación
%-- Funcion menores, toma el elemento y se encarga de generar una lista que contiene los menores a el.

%------------------------------ Llamadas de Ejemplo 
%-- > Ejemplo: menores(3,[2,3,1,7,0],L).
%              L=[2, 1, 0]

%              menores(5,[1,2,3,4,5,6,7,8,9,10],L).
%              L = [1, 2, 3, 4]

%-------------------------------- Resolución
%-- Se construye una base de conocimiento donde se almacenan los elementos menores a X y se consultan al final para mostrarlos

menores(_, [], L) :- findall(Z, men(Z), L), retractall(men(_)).
menores(X, [H|T], R) :- X > H, assert(men(H)), menores(X,T,R).
menores(X, [H|T], R) :- X =< H, menores(X,T,R).

let menores(X, [Li], L) = menores(3,[2,3,1,7,0],L).