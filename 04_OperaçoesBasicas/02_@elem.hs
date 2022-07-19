-- @ elem

-- --IN : Lista u e valor x
-- --OUT: Verdadeiro se x ∈ u e falso do contrário
-- pertence 1 [] == False
-- pertence 1 [3] == False
-- pertence 3 [4] == False
-- pertence 1 [3,7,4,2] == False
-- pertence 2 [3,7,4,2] == True
-- pertence 3 [3,7,4,2] == True
-- pertence 7 [3,7,4,2] == True

-- Guia
-- opção 1:
-- utilize a função elem

-- opção 2:
-- utilize a função filter ou listas de compreensão e conte se ele ocorre

-- opção 3:
-- crie a função recursiva
-- se chegar ao fim da lista retorne false
-- se encontrar o valor no head, retorne true
-- se não é o valor no head, chame a recursão para o resto da lista

-- Modo 1
pertence1 :: Int -> [Int] -> Bool
pertence1 = elem

-- Modo 2
pertence2 :: Int -> [Int] -> Bool
pertence2 x xs 
            | null contagem = False
            | otherwise = True
            where 
                contagem = [y | y <- xs, x == y]

-- Modo 2
pertence :: Int -> [Int] -> Bool
pertence x xs
            | null xs = False
            | x == head xs = True
            | otherwise = pertence x $ tail xs

main = do
    a <- readLn :: IO Int
    b <- readLn :: IO [Int]
    print $ pertence a b
