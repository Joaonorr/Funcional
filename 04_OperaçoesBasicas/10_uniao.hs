import Data.ByteString (sort, reverse)
-- uniao

-- --IN : Duas listas a e b sem repetição de chaves
-- --OUT: Lista das chaves de a e b sem repetição

-- uniao [4,5] [1] == [4,5,1]
-- uniao [4,5] [4,2,5] == [4,5,2]
-- uniao [1,2,3] [2,4,6] == [1,2,3,4,6]

uniao :: [Int] -> [Int] -> [Int]
uniao a [] = a
uniao a b = if head b `elem` a then uniao a (tail b) else uniao (a++[head b]) (tail b)  


main = do
    print $ uniao [4,5] [1] ==  [4,5,1]
    print $ uniao [4,5] [4,2,5]  == [4,5,2]
    print $ uniao [1,2,3] [2,4,6] == [1,2,3,4,6]
--     a <- readLn :: IO [Int]
--     b <- readLn :: IO [Int]
--     print $ uniao a b