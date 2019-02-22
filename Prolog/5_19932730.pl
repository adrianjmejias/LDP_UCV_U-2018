%Enunciado del Problema
%5. SumaAnt(Xs,Ys):- Si Xs = [x1,x2,…,xn], entonces Ys = [y1,y2,…,yn],de tal forma que y1=x1Σi=1n  xi para i=1..n .

%Explicación
%la funcion SumaAnt suma lo que es el elemento anterior de esa lista


%Llamadas de Ejemplo 
%?- sumaAnt([1,2,3],XS).
%XS = [7, 8, 9] 

%?- sumaAnt([1,2],XS).
%XS = [4, 5] .



%Resolución
% se usaron dos funciones una es sumelem,y esta suma lo que son los elemento en la lista, ejemplo [1,2,3] esta de una valor 6
% luego se realizamos la funcion sumelem_lista , una vez que ya tenemos ese valor 6 lo sumamos a cada elemento de la lista sumaAnt

sumaAnt([X|Xs],Ts):-sumelem([X|Xs],Z), sumelem_lista([X|Xs],Z,Ts).

sumelem([X|Xs],C):- sumelem(Xs,T), C is T+X.
sumelem([X],X).

sumelem_lista([],_,[]).
sumelem_lista([X|Xs],T,[G|G1]):- G is X+T , sumelem_lista(Xs,T,G1).
