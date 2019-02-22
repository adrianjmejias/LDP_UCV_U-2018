% Enunciado del Problema
% 13. Dada dos listas determinar si la primera lista es sublista de la segunda

% Explicación
%   -- la funcion subLista verifica si la primera lista esta en la segunda.


% Llamadas de Ejemplo 
%?- subLista([1,2],[1,2]).
%true .



%?- subLista([1,2],[3,5]).
%false.



% Resolución
% utilice dos lista donde la probamos el caso que las dos esten vacias, luego , tomamos donde el primer elemento de la lista se encuentre en el primer elemento
% de la segunda, luego probamos para que sea sublista del resto de la lista.




subLista([],[]):-!. 
subLista([C|R],[C|R1]):- subLista(R,R1), !. 
subLista(L,[_|R1]):- subLista(L,R1),!. 
