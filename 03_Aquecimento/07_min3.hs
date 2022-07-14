-- min3
-- --IN : Três números, x, y e z
-- --OUT: Menor valor entre x, y e z
-- min3 1 2 3 == 1
-- min3 2 1 3 == 1
-- min3 3 4 2 == 2
-- min3 2 5 4 == 2

-- Guia:
-- Utilize as guardas para verificar os 3 casos.
min3 :: Int -> Int -> Int -> Int
min3 a b c
        | a < b && a < c = a
        | c < b && c < a = c
        | otherwise = b

main = do
    print $ min3 1 2 3 == 1
    print $ min3 2 1 3 == 1
    print $ min3 3 4 2 == 2
    print $ min3 2 5 4 == 2
    -- a <- readLn :: IO Int
    -- b <- readLn :: IO Int
    -- c <- readLn :: IO Int
    -- print $ min3 a b c