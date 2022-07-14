-- Defina a função interior tal que (interior xs) é uma 
-- lista obtida eliminando os extremos da lista xs.

-- Por exemplo:
-- interior [1,2] == []
-- interior [1,3,2] == [3]
-- interior [2,5,3,7,3] == [5,3,7]
-- interior [2,2,2,4] == [2,2]
-- interior [1,2,3,5,7,8] == [2,3,5,7]

interior :: [Int] -> [Int]
interior xs  
        | length xs < 2 = []
        | otherwise = init (tail xs)

main = do
    a <- readLn :: IO [Int]
    print $ interior a