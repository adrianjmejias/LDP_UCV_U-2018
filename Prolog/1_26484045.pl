%------------------------- Enunciado del Problema
%--Considere los siguientes hechos y reglas:
%--predecesor(luisa, veronica).
%--predecesor(guillermo, veronica).
%--predecesor(guillermo, lucia).
%--predecesor(veronica, maria).
%--predecesor(veronica, ruben).
%--predecesor(ruben, rafael).
%--predecesor(ruben, carolina).
%--anterior(X,Y):- predecesor(X,Y).
%--anterior(X,Y):- predecesor(X,Z), anterior(Z,Y).
%--hermanos(X,Y):- predecesor(Z,X), predecesor(Z,Y).

%--En base a sus conocimientos, señale el comportamiento y la respuesta, que
%--arrojaría el motor de inferencias de prolog, si se realizan las siguientes consultas
%--(Suponer que se solicita todas por backtracking):
%--a) ?predecesor(guillermo, carla).
%--b) ?predecesor(guillermo, X).
%--c) ?predecesor(Y, veronica).
%--d) ?predecesor(ruben, carolina).
%--e) ?predecesor(Y, X).
%--f) ?anterior(verónica, X).
%--g) ?anterior(X, rafael).
%--h) ?hermanos(veronica,X).

%--------------------------------- Explicación

%	Señalar el comportamiento, la respuesta y qué arrojaría el motor de inferencias de prolog segùn los hechos y reglas dados.


%------------------------------ Llamadas de Ejemplo 

%	predecesor(guillermo, carla).->False. 
%	--Ya que al no estar guillermo como predecesor de carla en la base de conocimitos entonces retorna falso, indicando que guillermo no es predecesor de carla.

%-------------------------------- Resolución

%	a) ?predecesor(guillermo, carla). 
%	--Arroja false.
%	--Ya que al no estar guillermo como predecesor de carla en la base de conocimitos entonces retorna falso, indicando que guillermo no es predecesor de carla.

%	b) ?predecesor(guillermo, X).
%	--Arroja veronica. y lucia.
%	--Ya que al colocar guillermo de primer parámetro y una incognita en el segundo parámetro prolog buscará a todos los X que los precede guillermo.

%	c) ?predecesor(Y, veronica).
%	--Arroja luisa. y guillermo.
%	--Ya que sería el mismo caso que en la b) sólo que esta vez prolog busca a los predecesores de veronica.

%	d) ?predecesor(ruben, carolina).
%	--Arroja true.
%	--Ya que en la base de conocimientos se encuentra ruben como predecesor de carolina.

%	e) ?predecesor(Y, X).
%	--Arroja todas los Y y X posibles según los hechos indicados anteriormente. Ya que al colocar dos incognitas en los parámetos de predecesor, prolog busca todas las posibles salidas según la base de conocimientos.

%	f) ?anterior(verónica, X).
%	--Arroja false.
%	--Ya que no existe un nombre con verónica. Si fuera veronica sin acento, arroja X = maria ; X = ruben ; X = rafael ; X = carolina ; ya que en anterior busca los predecesores a veronica y también a los predecesores de sus predecesores.

%	g) ?anterior(X, rafael).
%	--Arroja todos los X posibles precedentes pero como ninguno coincide con ser el predecesor de rafael entonces al final retorna false.

%	h) ?hermanos(veronica,X).
%	--Arroja X = veronica ;X = lucia ;X = veronica.; ya que busca a quien precede veronica y luego el predecesor de aquellos quien veronica precede.