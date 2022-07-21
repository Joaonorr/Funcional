-- @ partition

-- IN : Lista de inteiros positivos, u
-- OUT: Tupla de duas listas, (A,B), onde A e B são respectivamente compostos pelos números que passam no predicado e os que não passam
-- splitints odd [1,2,3,4,5,6,7] == ([1,3,5,7],[2,4,6])
-- splitints (<5) [2,4,6,1,1,7] == ([2,4,1,1],[6,7])

-- splitints :: Int -> [Int] -> ([Int],[Int])
splitints xs = ([y | y<-xs , odd y],[y | y<-xs , even y])

main = do
    a <- readLn :: IO [Int]
    print $ splitints a