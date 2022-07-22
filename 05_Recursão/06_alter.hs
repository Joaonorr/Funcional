-- alter

-- --IN : Inteiro n
-- --OUT: Lista [1, −1, 2, −2, 3, −3, · · · , n, −n]

-- alter 1 == [1,-1]
-- alter 2 == [1,-1,2,-2]
-- alter 4 == [1,-1,2,-2,3,-3,4,-4]

alter :: Int -> [Int]
alter n = if n == 1 then [1, -1] else alter (n-1) ++ [n, -n] 

main = do
    a <- readLn :: IO Int
    print $ alter a