%------------------------- Enunciado del Problema
%-- Dada dos lista de igual tamaño, permita realizar, elemento por elemento,
%-- operaciones aritméticas básicas (asumiendo que las op basicas son +,-,* y /.

%--------------------------------- Explicación
%-- Funcion arit, Separo ambas listas de entrada en Head y Tail y le aplico la operacion correspondiente.

%------------------------------ Llamadas de Ejemplo 
%-- > Ejemplo: arit(+,[1,1,1],[1,2,3],Z).
%              [2,3,4].
%
%              arit(-,[1,1,1],[1,2,3],Z).
%              [0,-1,-2].
%
%              arit(*,[1,1,1],[1,2,3],Z).
%              [1,2,3].
%
%              arit(/,[1,1,1],[1,2,3],Z).
%              [1,0.5,0.3333333333333333].

%-------------------------------- Resolución
%-- Declaro multiples definiciones para la funcion, dependiendo del primer simbolo que indica la operacion
%   se realizará la correspondiente operacion a los elementos ordenados de las listas. Hago multiples llamadas
%   recursivas y obtengo el resultado deseado al final de la llamada.

arit(_, [], [], Z) :- reverse(Z,O), write(O), !.
arit(+, [H|T], [I|U], []) :- A is H + I, arit(+, T, U, [A]).
arit(+, [H|T], [I|U], D) :- A is H + I, arit(+, T, U, [A|D]).

arit(-, [H|T], [I|U], []) :- A is H - I, arit(-, T, U, [A]).
arit(-, [H|T], [I|U], D) :- A is H - I, arit(-, T, U, [A|D]).

arit(*, [H|T], [I|U], []) :- A is H * I, arit(*, T, U, [A]).
arit(*, [H|T], [I|U], D) :- A is H * I, arit(*, T, U, [A|D]).

arit(/, [H|T], [I|U], []) :- A is H / I, arit(/, T, U, [A]).
arit(/, [H|T], [I|U], D) :- A is H / I, arit(/, T, U, [A|D]).