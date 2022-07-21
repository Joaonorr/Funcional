-- somaImpares
-- Defina uma função somaImpares tal que somaImpares xs devolve a soma dos elementos ímpares de uma lista.

-- somaImpares [2,3,1,5] == 9
-- somaImpares [1,1,4,2] == 2
-- somaImpares [3,2,4,6,5,7,8,0,1] == 16
-- somaImpares [2,3,1,5,2,2] == 9
-- somaImpares [1,1,1,1] == 4

-- Opções
-- Use as função odd, filter

-- Use listas de compreensão

-- Forma1
somaImpares1 :: [Int] -> Int
somaImpares1 xs = sum $ filter odd xs

-- Forma2
somaImpares2 :: [Int] -> Int
somaImpares2 xs = sum [x | x <- xs , odd x]

main = do
    print $ somaImpares2 [2,3,1,5] == 9
    print $ somaImpares2 [1,1,4,2] == 2
    print $ somaImpares2 [3,2,4,6,5,7,8,0,1] == 16
    print $ somaImpares2 [2,3,1,5,2,2] == 9
    print $ somaImpares2 [1,1,1,1] == 4