-- @ maximum

-- --IN : Lista u
-- --OUT: O maior valor de u
-- --OBS: Não usar função max ou maximum
-- maior [4] == 4
-- maior [5,1] == 5
-- maior [5,7] == 7
-- maior [1,2,7,1,5] == 7
-- maior [1,2,3,1,5] == 5

-- Guia
-- Se só existe um elemento, ele é o maior
-- Se existe mais de um
-- use where pra calcular o máximo do resto
-- use o if para retornar o maior ente o head e o resto

maior xs
        | length xs == 1 = head xs
        | maior (tail xs) > head xs = maior $ tail xs 
        | otherwise = head xs

main = do
    print $ maior [4] == 4
    print $ maior [5,1] == 5
    print $ maior [5,7] == 7
    print $ maior [1,2,7,1,5] == 7
    print $ maior [1,2,3,1,5] == 5
--     a <- readLn :: IO [Int]
--     print $ maior a
