%------------------------- Enunciado del Problema
%-- Construir un programa de gestión de una agencia matrimonial. El programa debe almacenar datos de las personas, así como sus preferencias y, buscar las mejores combinaciones de parejas según su criterio. (Use E/S y Base de Datos). 

%--------------------------------- Explicación
%-- Funcion iniciar, es la funcion que invoca al programa. Puede ser visto para este caso como una llamada a un main.
%-- Funcion opciion, dependiendo de la opcion seleccionada, se muestra un caso de uso diferente.
%-- Funcion p1, esta funcion es invocada para insertar en la base de conocimientos el sexo del usuario. (se asumen dos sexos, hombre y mujer)
%-- Funcion p2, esta funcion es invocada para insertar en la base de conocimientos la orientacion sexual del usuario. (se asumen tres orientaciones, heterosexual, bisexual y homosexual)
%-- Funcion p3, esta funcion es invocada para insertar en la base de conocimientos los intereses por los que se va a emparejar con otros usuarios.
%-- Funcion pareja, encuentra un posible candidato de emparejamiento tomando en consideracion el sexo, la orientacion sexual y el interes principal en comun entre usuarios.

%------------------------------ Llamadas de Ejemplo 
%-- > Ejemplo: iniciar.
%              ..... (depende del caso de uso utilizado).

%-------------------------------- Resolución
%-- Hago uso de la base de conocimientos y E/S estandar para plantear un programa de menu.

% Se asume que por politicas de la empresa siempre deben existir al menos estos tres registros basicos.

mujer(jane).
heterosexual(jane).
tieneInteres(jane, comer).

hombre(jake).
bisexual(jake).
tieneInteres(jake, comer).

hombre(dan).
homosexual(dan).
tieneInteres(dan, comer).

iniciar :- write('Bienvenido al sistema de gestion de matrimonio.'), nl, nl,
		   write('a. Registrar persona.'), nl,
		   write('b. Buscar Pareja.'), nl,
		   write('c. Salir.'), nl, nl,
		   write('Seleccione una opcion: '), read(Input), nl, opcion(Input).

opcion(a) :- write('Introduzca el nombre de la persona: '), read(Nombre),
			 write('Cual es su sexo? (h/m): '), read(Sexo),
			 write('Cual es su orientacion sexual? (hete/bi/homo): '), read(Ori),
			 write('Que le apasiona en la vida?: '), read(Pas),
			 p1(Nombre, Sexo), p2(Nombre, Ori), p3(Nombre,Pas),
			 write('Usuario agregado satisfactoriamente.'), nl, nl, iniciar.

p1(Nombre, h) :- assert(hombre(Nombre)).
p1(Nombre, m) :- assert(mujer(Nombre)).

p2(Nombre, hete) :- assert(heterosexual(Nombre)).
p2(Nombre, bi) :- assert(bisexual(Nombre)).
p2(Nombre, homo) :- assert(homosexual(Nombre)).

p3(Nombre, I) :- assert(tieneInteres(Nombre, I)).

opcion(b) :- write('Introduzca el nombre de la persona a la cual buscarle pareja: '), read(Input), pareja(Input, Y), write('Un posible candidato es: '), write(Y), write('. Tambien es posible que estes destinado a estar solo para siempre.') iniciar.

pareja(X,Y) :- mujer(X), mujer(Y), homosexual(X), homosexual(Y), tieneInteres(X, I), tieneInteres(Y, I).
pareja(X,Y) :- mujer(X), mujer(Y), homosexual(X), bisexual(Y), tieneInteres(X, I), tieneInteres(Y, I).
pareja(X,Y) :- mujer(X), mujer(Y), bisexual(X), homosexual(Y), tieneInteres(X, I), tieneInteres(Y, I).

pareja(X,Y) :- mujer(X), hombre(Y), heterosexual(X), heterosexual(Y), tieneInteres(X, I), tieneInteres(Y, I).
pareja(X,Y) :- mujer(X), hombre(Y), bisexual(X), heterosexual(Y), tieneInteres(X, I), tieneInteres(Y, I).
pareja(X,Y) :- mujer(X), hombre(Y), heterosexual(X), bisexual(Y), tieneInteres(X, I), tieneInteres(Y, I).

pareja(X,Y) :- hombre(X), hombre(Y), homosexual(X), homosexual(Y), tieneInteres(X, I), tieneInteres(Y, I).
pareja(X,Y) :- hombre(X), hombre(Y), homosexual(X), bisexual(Y), tieneInteres(X, I), tieneInteres(Y, I).
pareja(X,Y) :- hombre(X), hombre(Y), bisexual(X), homosexual(Y), tieneInteres(X, I), tieneInteres(Y, I).

opcion(c).