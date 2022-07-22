-- fibonacci

-- --IN : Inteiro positivo n
-- --OUT: N-ésimo termo da sequência
-- fib 0 == 0
-- fib 1 == 1
-- fib 2 == 1
-- fib 3 == 2
-- fib 4 == 3
-- fib 5 == 5
-- fib 6 == 8
-- fib 7 == 13
-- Guia
-- Defina os casos bases para 0 e 1
-- Defina a recursão para f(n)

fib :: Int -> Int
fib n
    | n == 0 = 0
    | n == 1 = 1
    | otherwise = fib (n-1) + fib (n-2)


main = do
    a <- readLn :: IO Int
    print $ fib a