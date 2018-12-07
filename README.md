# LDP_UCV_U-2018
## Instrucciones

La mecánica es la siguiente, podrán resolver los problemas de la práctica en código y subirlos en este repo levantando un pull request.

Se darán puntos extra en los quices dependiendo de cúantos hayan resuelto y la dificultad del problema, tomando en cuenta que los problemas tendrán el siguiente puntaje( los problemas no están marcados por dificultad pero pueden asumir la diferencia entre un problema moderado y uno fácil).

| Dificultad | Puntaje |
| ---------- | ------- |
| Muy fácil  | 0.5     |
| Fácil      | 1       |
| Moderado   | 1.5     |



## Consideraciones

- Los problemas solo pueden ser resueltos una vez, por una persona en el curso, por ejemplo, si alguien ya resolvió el problema 4 de haskell entonces ese problema no dará puntos a las personas que quieran hacerlo.

- Se dará máximo 5 puntos por persona.

-  Estos puntos pueden sobrepasar el máximo de nota de los quices, por lo que, una nota de 20 20 25 es posible.

- Se podría dar puntos extras basandonos en la elegancia y brevedad de la solución

  

## Subir Respuestas

### Caso Haskell y Prolog

Subir archivo del código en su carpeta correspondiente, el archivo debe llamarse \<número de problema>_\<cédula estudiante>.\<extensión> y debe tener el siguiente formato.

```haskell
------------------------- Enunciado del Problema
-- Implemente la función swap que recibe por parametro una dupla y retorne una dupla con el orden de los elementos invertidos

--------------------------------- Explicación
-- Funcion Swap, intercambia el orden de los valores dentro de una tupla de 2 elementos
-- swap::(a,b)->(b,a)

------------------------------ Llamadas de Ejemplo 
-- > swap (1,2)
-- (2,1)

-- > swap(9, 3)
-- (3,9)

-------------------------------- Resolución
-- utilizamos el pase de parámetros por patrón para obtener los valores dentro de la tupla
-- y retornamos construyendo otra tupla con el orden que queremos
let swap (a,b) = (b,a)
```

### Caso Java 

Deben crear una carpeta nueva dentro de la carpeta Java que se llame <número de problema>_\<cédula de estudiante>.

En esta carpeta que crearon deben estar sus archivos .java que pueden llamar como gusten y un makefile que los compile.

El main debe estar comentado como los archivos de prolog y haskell y adicional deben explicar los recursos críticos, los threads involucrados y el modelado de su solución.



## Recursos

### Haskell



[Learn You a Haskell for Great Good!]: http://learnyouahaskell.com/chapters	"Learn You a Haskell for Great Good!"



### Prolog





### Java MultiThreading





