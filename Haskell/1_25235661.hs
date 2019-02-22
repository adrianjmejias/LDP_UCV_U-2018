import Data.List
import System.IO

------------------------- Enunciado del Problema y Explicación

{-

1. Definir las siguientes funciones y determinar su tipo:
• apply, que toma una función y un valor, y devuelve el resultado de aplicar la
función al valor dado .
• first, que toma un par ordenado, y devuelve su primera componente.
• sign, la función signo.
• abs, la función valor absoluto (usando sign y sin usarla).
• pot, que toma un entero y un número, y devuelve el resultado de elevar el segundo
a la potencia dada por el primero.
• xor, el operador de disyunción exclusiva.
• max3, que toma tres números enteros y devuelve el máximo entre ellos.
• swap, que toma un par y devuelve el par con sus componentes invertidas.

-}


------------------------- Llamadas de ejemplo

--- apply (* 3) 2
--- 6

--- first (3,2)
--- 3

--- sign (-3)
--- -1

--- abs2 (-3)
--- 3

--- pot 3 2
--- 8

--- xor True False
--- True

--- max3 1 2 3
--- 3

--- max2 1 2
--- 2

--- swap (1,2)
--- (2,1)

------------------------- Resolución


apply :: (a -> b) -> a -> b 
apply f x = f x

first :: (a,b) -> a 
first (x,_) = x

sign :: (Ord a, Num a) => a -> Int
sign x | x > 0 = 1 
 | x < 0 = -1
 | otherwise = 0 


abs2 :: (Ord a, Num a) => a -> a
abs2 x | x > 0 = x
 | x < 0 = -x
 | otherwise = x

pot :: (Num a) => Int -> a -> a
pot 1 y = y
pot x y = y * (pot (x-1) y) 

xor :: Bool -> Bool -> Bool

xor True True = False
xor False False = False
xor _ _ = True

max3 :: (Ord a, Num a) => a -> a -> a -> a

max3 x y z | x < (max2 y z) = (max2 y z)
 | x > (max2 y z) = x
 | otherwise = x

max2 :: (Ord a, Num a) => a -> a -> a

max2 x y | x > y = x
 | otherwise = y


swap :: (a,b) -> (b,a)

swap (x,y) = (y,x)