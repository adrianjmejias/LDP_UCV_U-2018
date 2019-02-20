------------------------- Enunciado del Problema
-- Escriba una función M_Lista, que dada una lista de entrada L de números enteros, con
-- valores repetidos, retorne una lista de sublistas (sin elementos repetidos), donde cada
-- una de las cuales esté formada por los siguientes componentes:
-- a) El número entero de la lista L.
-- b) El número de veces que aparece dicho número en la lista L
-- c) La sumatoria de las ocurrencias del número anterior en la lista L

--------------------------------- Explicación
-- Funcion m_lista, calcula y retorna una tupla que posee [numero, numero de ocurrencias
-- en la lista, sumatoria de las ocurrencias del número]
-- m_lista:: [Int] -> [[Int]]

------------------------------ Llamadas de Ejemplo 
-- > m_Lista [5,7,7]
-- [[5,1,5] , [7,2,14]]

-- > m_Lista [1,2,3,2,3,4]
-- [[1,1,1] , [2,2,4],[3,2,6], [4,1,4]]

-------------------------------- Resolución
-- A partir de li se calcula oc,que es el numero de ocurrencias de num en li
-- para luego calcular la sumatoria de la ocurrencias de num,que se calcula num*oc.

m_lista [] = []
m_lista li = [num, oc, num*oc]:m_lista f_li 
            where 
            num = head(li)
            oc = length(filter(==num) li)
            f_li = filter(/=num) li