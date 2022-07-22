-- maioresQue
-- --IN : Número x e uma lista u
-- --OUT: Sublista de u cujos números sejam maiores que x
-- --OBS: Faça usando filter e CList
-- maioresQue 10 [] == []
-- maioresQue 10 [11,9,12] == [11,12]
-- maioresQue 10 [4,6,30,3,15,3,10,7] == [30,15]

maioresQue :: Int -> [Int] -> [Int]
maioresQue x [] = []
maioresQue x xs = if head xs > x then head xs:maioresQue x (tail xs) else maioresQue x (tail xs)

maioresQue1 :: Int -> [Int] -> [Int]
maioresQue1 x xs = filter (>x) xs 

maioresQue2 :: Int -> [Int] -> [Int]
maioresQue2 x xs = [y | y <- xs, y > x]

main = do
    a <- readLn :: IO Int
    b <- readLn :: IO [Int]
    print $ maioresQue a b