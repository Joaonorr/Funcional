import Lexer (xtest)
-- frequencia

-- --IN : Lista u e valor x
-- --OUT: O total de ocorrências de x em u
-- frequencia 1 [] == 0
-- frequencia 4 [4] == 1
-- frequencia 4 [5] == 0
-- frequencia 4 [4,4] == 2
-- frequencia 2 [4,4] == 0
-- frequencia 5 [4,5,2,1,5,5,9] == 3
-- Guia
-- Você pode utilizar a função length
-- Faça utilizando filter
-- filtre quem for igual ao valor
-- Faça utilizando compreensão de lista
-- filtre quem for igual ao valor
-- Faça utilizando recursão
-- se y for igual a head some 1 se não, 0
-- Faça utilizando fold
-- utilize a lógica da recursão

frequencia1 :: Int -> [Int] -> Int
frequencia1 x [] = 0
frequencia1 x xs = if x == head xs then 1 + frequencia1 x (tail xs) else frequencia1 x (tail xs)

frequencia2 :: Int -> [Int] -> Int
frequencia2 x xs = length (filter (==x) xs)

frequencia3 :: Int -> [Int] -> Int
frequencia3 x xs = length [y | y <- xs, y == x]

frequencia4 :: Int -> [Int] -> Int
frequencia4 x xs = foldl verificar 0 xs
            where verificar acc valor = if x == valor then acc + 1 else acc 

main = do
    print $ frequencia4 1 [] == 0
    print $ frequencia4 4 [4] == 1
    print $ frequencia4 4 [5] == 0
    print $ frequencia4 4 [4,4] == 2
    print $ frequencia4 2 [4,4] == 0
    print $ frequencia4 5 [4,5,2,1,5,5,9]
--     a <- readLn :: IO Int
--     b <- readLn :: IO [Int]
--     print $ frequencia a b