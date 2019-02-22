
------------------------- Enunciado del Problema
-- Escriba una función que dado la estructura de datos Arbol permita determinar si es un  heap 
-- si cumple las siguientes condiciones:
-- El árbol debe ser binario, es decir cada nodo tiene grado 2.
-- Los nodos y hojas poseen un valor entero.
-- Para cada nodo, todos sus hijos deben tener un valor mayor o igual que el suyo.


---------------------------- Explicación
-- tenemos una fncion heap la cual recibe un arbol y devuelve un bool
-- heap :: Arbol -> Bool
-- luego tenemos una funcion heap2 esta recibe un arbol y un int  y devuelve Bool
-- heap2:: Arbol -> Int ->Bool

------------------------------ Llamadas de Ejemplo 
-- [1 of 1] Compiling Main             ( 25_19932730.hs, interpreted )
-- Ok, modules loaded: Main.
-- *Main> heap (Nodo 2 (Nodo 3 (Hoja 4) (Hoja 7)) (Hoja 6))
-- True
-- *Main> heap (Nodo 2 (Nodo 3 (Hoja 4) (Hoja 17)) (Hoja 8))
-- True
-- *Main> 

-------------------------------- Resolución
-- primeramente tenemos la funcion heap2 la cual comparamos la raiz con el elemento e , luego tenemos el caso recursivo
-- donde vamos comparando el lado izq y el lado der
-- luego esa funcion se la pasamos a heap, donde nos retorna un bool si es heap o no 


data Arbol= Hoja Int | Nodo Int Arbol Arbol deriving Show

heap :: Arbol -> Bool
heap (Nodo v izq der) = (heap2 izq v) && (heap2 der v)
heap (_)=True

heap2:: Arbol -> Int ->Bool
heap2 (Nodo v izq der) e = v >= e && (heap2 izq v) &&(heap2 der v)
heap2 (Hoja v) e = v >= e
