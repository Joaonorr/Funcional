-- --IN : Um natural n
-- --OUT: O fatorial de n
-- fatorial 0 == 1
-- fatorial 1 == 1
-- fatorial 5 == 120
-- Guia
-- Utilize a função product e o gerador de lista [0..n]

fatorial :: Int -> Int
fatorial x
        | x < 1 = 1
        | otherwise = x * fatorial (x - 1)
main = do
    a <- readLn :: IO Int
    print $ fatorial a