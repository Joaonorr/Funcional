-- intersec - intercessão entre listas

-- --IN : Duas listas a e b sem repetição de chaves
-- --OUT: Lista das chaves que a e b possuem em comum
-- intersec [3] [3] == [3]
-- intersec [3,4,1] [1,4,3] == [3,4,1]
-- intersec [3,6,5,7] [9,7,5,1,3,6] == [3,6,5,7]
-- intersec [3,6,5,7] [9,7,5,1,3] == [3,5,7]

intersec :: [Int] -> [Int] -> [Int]
intersec a b
            | null a = []
            | head a `elem` b = head a : intersec (tail a) b
            | otherwise = intersec (tail a) b

main = do
    a <- readLn :: IO [Int]
    b <- readLn :: IO [Int]
    print $ intersec a b