-- min2
-- --IN : Dois números, x e y
-- --OUT: Menor valor entre x e y
-- min2 3 4 == 3
-- min2 4 1 == 1
-- min2 2 2 == 2
-- min2 4 -1 == -1

min2 :: Int -> Int -> Int
min2 a b
        | a < b = a
        | otherwise = b

main = do
    a <- readLn :: IO Int
    b <- readLn :: IO Int
    print $ min2 a b