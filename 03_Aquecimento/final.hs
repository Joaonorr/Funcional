import GHC.Base (IO(IO))
-- final
-- Defina a função final tal que final xs é uma lista formada pelos n elementos finais de xs.

-- final 0 [] = []
-- final 3 [2,5,4,7,9,6] == [7,9,6]
-- final 2 [2,5,4,7,9,6] == [9,6]
-- final 1 [2,5,4,7,9,6] == [6]

final :: Int -> [a] -> [a]
final 0 xs = []
final x [] = []
final x xs =  final (x-1) (init xs) ++ [last xs]

main = do
    a <- readLn :: IO Int
    b <- readLn :: IO [Int]
    print $ final a b