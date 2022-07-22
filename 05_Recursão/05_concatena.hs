-- concatena

-- --IN : Duas listas a e b
-- --OUT: Concatenação entre a e b
-- concatena [] [] == []
-- concatena [] [3,4] == [3,4]
-- concatena [1,2] [] == [1,2]
-- concatena [1,2] [3,4] == [1,2,3,4]
-- concatena [1,2,3] [3,4] == [1,2,3,3,4]
-- OBS: não pode usar o operador de ++, apenas o :

concatena :: [Int] -> [Int] -> [Int]
concatena xs ys 
            | null xs = ys
            | null ys = xs
            | otherwise = head xs : concatena (tail xs) ys
main = do
    print $ concatena [] [] == []
    print $ concatena [] [3,4] == [3,4]
    print $ concatena [1,2] [] == [1,2]
    print $ concatena [1,2] [3,4] == [1,2,3,4]
    print $ concatena [1,2,3] [3,4] == [1,2,3,3,4]
--     a <- readLn :: IO [Int]
--     b <- readLn :: IO [Int]
--     print $ concatena a b