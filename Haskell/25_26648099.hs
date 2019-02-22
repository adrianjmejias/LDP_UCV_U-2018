------------------------- Enunciado del Problema
-- Escriba una función que dado la estructura de datos Arbol permita determinar si es un
-- heap. Un árbol es heap si cumple las siguientes condiciones:
-- El árbol debe ser binario, es decir cada nodo tiene grado 2.
-- Los nodos y hojas poseen un valor entero.
-- Para cada nodo, todos sus hijos deben tener un valor mayor o igual que el suyo.
-- La estructura Arbol a utilizarse se presenta a continuación:
-- data Arbol= Hoja Int | Nodo Int Arbol Arbol

--------------------------------- Explicación
-- Funcion heap, determina si un arbol es heap, es decir ue cumpla con todas las codnciones
-- antes mencionadas.
-- heap:: Arbol -> Bool

------------------------------ Llamadas de Ejemplo 
-- > heap (Nodo 2 (Nodo 3 (Hoja 4) (Hoja 7)) (Hoja 6))
-- True

-- > heap (Nodo 3 (Nodo 4 (Hoja 3) (Hoja 6)) (Hoja 7))
-- False

-------------------------------- Resolución
-- verifica que para cada nodo, todos sus hijos tienen un valor mayor o igual que el suyo.

data Arbol = Hoja Int | Nodo Int Arbol Arbol

heap (Hoja h) = True
heap (Nodo c l r) = c<getvalue(l) && c<getvalue(r) && heap(l) && heap (r)
                where 
                getvalue (Hoja h) = h
                getvalue (Nodo c _ _) = c