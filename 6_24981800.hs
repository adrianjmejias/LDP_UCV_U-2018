{- ------------------------- Enunciado del Problema
Generalizar la función:
iSort [] = []
iSort (x:xs) = insertar x (iSort xs)
where insertar z [] = [z]
insertar z (x:xs)
| x<z = (x:(insertar z xs) )
| otherwise = (z:x:xs)
Para obtener una función de orden superior iSortGen que tome como argumento
(además de la lista) un predicado binario que represente el orden con respecto al cual
ordenará. En particular, debe cumplirse que iSort = iSortGen (<)
También debe ocurrir que:
iSortGen (>) [2,3,1,5,3] => [5,3,3,2,1]
iSortGen (<) ["casa","perro","coche"] =>
["casa","coche","perro"]
iSortGen (==) [2,3,1,5,3] => [2,3,1,5,3]
iSortGen (==) ["casa","perro","coche"] => ["casa","perro","coche"]

Además, se pide:
a) Decir cuál es el tipo de iSort y el de iSortGen.
b) ¿Cuál sería el resultado de iSortGen (>) [(1,2,3), (1,2,5),
(3,4,4)]?
c) Definir usando iSortGen una función OrdTrip que ordene listas de triples por
orden decreciente de su tercera componente. Por ejemplo:
OrdTrip [(1,2,3),(1,2,5),(3,4,4)]
=>[(1,2,5),(3,4,4),(1,2,3)]
-}

--------------------------------- Explicación
-- Funcion iSort enunciado ordena elementos,
-- Funcion iSort general ordena elementos dependiendo si decreciente, ascenediente o los deja igual
-- iSortGen::Ord a=>(Int->Int->Bool)->[a]->[a]
-- iSortGen::Ord a=>(Int->Int->Bool)->[a]->[a]
-- ordTrip::Ord a=>[(a,a,a)]->[(a,a,a)]
-- ordTrip1::Ord a=>[(a,a,a)]->[(a,a,a)] 


------------------------------ Llamadas de Ejemplo 
{-
>iSortGen (>) [2,3,1,5,3]
 [5,3,3,2,1]
>iSortGen (<) ["casa","perro","coche"]
["casa","coche","perro"]
>iSortGen (==) [2,3,1,5,3]
 [2,3,1,5,3]
>iSortGen (==) ["casa","perro","coche"]
 ["casa","perro","coche"]


> ordTrip [(1,2,3),(1,2,5),(3,4,4)]
>[(1,2,5),(3,4,4),(1,2,3)]
-}

-------------------------------- Resolución
-- Funcion iSort ya definida en el enunciado
-- ya que el operador es un booleano solo tenemos que definir los casos en donde se usa
-- se utiliza entonces una llamada infija del operador para definir los casos
-- la llamada ordTrip se rescribio con minuscula porque con mayuscula daba problemas
-- b) [(3,4,4),(1,2,5),(1,2,3)]


iSort::Ord a=>[a]->[a] --a) el tipo de iSort
iSort [] = []
iSort (x:xs) = insertar x (iSort xs)
          where insertar z [] = [z]
                insertar z (x:xs)
                    | x<z = (x:(insertar z xs) )
                    | otherwise = (z:x:xs)
                    
iSortGen::Ord a=>(Int->Int->Bool)->[a]->[a]   --a) el tipo de iSortGen          
iSortGen op (x:xs) 
               | (3 `op` 2) = reverse (iSort(x:xs))
               | (2 `op` 3) = iSort(x:xs)
               | otherwise = (x:xs)
--c)
ordTrip::Ord a=>[(a,a,a)]->[(a,a,a)]
ordTrip []=[]
ordTrip (x:xs) = iSortGen (==) (ordTrip1 (x:xs))

ordTrip1::Ord a=>[(a,a,a)]->[(a,a,a)]          
ordTrip1 []=[]
ordTrip1 ((a,b,c):xs) = insertar (a,b,c) (ordTrip1 xs)
                    where insertar (q,w,e) [] = [(q,w,e)]
                          insertar (q,w,e) ((y,z,x):xs)
                             | e<x = ((y,z,x):(insertar (q,w,e) xs))
                             | otherwise = ((q,w,e):(y,z,x):xs)
          
