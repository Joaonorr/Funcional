-- reverso
-- Implemente a função reverse com recursão

-- --IN : Lista u
-- --OUT: Lista das chaves de u na ordem inversa
-- reverso [] == []
-- reverso [7] == [7]
-- reverso [2,3] == [3,2]
-- reverso [1,2,3,4] == [4,3,2,1]


reverso :: [Int] -> [Int]
reverso xs = last xs : reverse (init xs)

main = do
     a <- readLn :: IO [Int]
     print $ reverso a