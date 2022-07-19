-- @ init

-- --IN : Uma lista u
-- --OUT: Lista menos o último elemento
-- primeiros [1] == []
-- primeiros [1,2] == [1]
-- primeiros [1,2,3,4] == [1,2,3]

primeiros :: [Int] -> [Int]
primeiros xs
            | length xs == 1 = []
            | otherwise = head xs : primeiros (tail xs)
main = do
    a <- readLn :: IO [Int]
    print $ primeiros a