-- unico

-- --IN : Lista u e valor x
-- --OUT: True se x ocorre exatamente uma vez em u e false do contrário

-- unico 2 [2] == True
-- unico 2 [3,1] == False
-- unico 2 [1,2,3,2] == False
-- Guia
-- Faça utilizando filter
-- Você pode utilizar a função length
-- filtre quem for igual ao valor e veja se aparece uma só vez
-- Faça utilizando recursão
-- se y for igual a head return True

unico1 :: Int -> [Int] -> Bool
unico1 x xs = length (filter (==x) xs) == 1

unico2 :: Int -> [Int] -> Bool
unico2 x xs
        | null xs = False
        | x == head xs = True
        | otherwise = unico2 x (tail xs)

main = do
    print $ unico2 2 [2] == True
    print $ unico2 2 [3,1] == False
    print $ unico2 2 [1,2,3,2] == False
--     a <- readLn :: IO Int
--     b <- readLn :: IO [Int]
--     print $ unico a b