-- sublist
-- Defina a função sublist que obtém uma sublista passando início, fim e a lista. Se forem utilizados números negativos, interprete-os como sendo contando a partir do fim da lista. O índice final não entra na lista.

-- sublist 1 3 [0,1,2,3,4,5,6,7,8,9,10] == [1,2]
-- sublist 0 11 [0,1,2,3,4,5,6,7,8,9,10] == [0,1,2,3,4,5,6,7,8,9,10]
-- sublist 2 8 [0,1,2,3,4,5,6,7,8,9,10] == [2,3,4,5,6,7]
-- sublist 0 -1 [0,1,2,3,4,5,6,7,8,9,10] == [0,1,2,3,4,5,6,7,8,9]
-- sublist 2 -2 [0,1,2,3,4,5,6,7,8,9,10] == [2,3,4,5,6,7,8]
-- sublist -10 -1 [0,1,2,3,4,5,6,7,8,9,10] == [1,2,3,4,5,6,7,8,9]
-- sublist -4 -2 [0,1,2,3,4,5] == [2,3]
sublist :: Int -> Int -> [Int] -> [Int]
sublist a b xs
            | a < 0 = drop (length xs - a) (take b xs)
            | b < 0 = drop a (take (length xs - b) xs)
            | a < 0 && b < 0 = drop (length xs - a) (take (length xs - b) xs)
            | otherwise = drop a (take b xs)

main = do
    print $ sublist 1 3 [0,1,2,3,4,5,6,7,8,9,10] -- [1,2]
    print $ sublist 0 11 [0,1,2,3,4,5,6,7,8,9,10] -- [0,1,2,3,4,5,6,7,8,9,10]
    print $ sublist 2 8 [0,1,2,3,4,5,6,7,8,9,10] -- [2,3,4,5,6,7]
    print $ sublist 0 (-1) [0,1,2,3,4,5,6,7,8,9,10] -- [0,1,2,3,4,5,6,7,8,9]
    print $ sublist 2 (-2) [0,1,2,3,4,5,6,7,8,9,10] -- [2,3,4,5,6,7,8]
    print $ sublist (-10) (-1) [0,1,2,3,4,5,6,7,8,9,10] -- [1,2,3,4,5,6,7,8,9]
    print $ sublist (-4) (-2) [0,1,2,3,4,5] -- [2,3]
--     a <- readLn :: IO Int
--     b <- readLn :: IO Int
--     c <- readLn :: IO [Int]
--     print $ sublist a b c