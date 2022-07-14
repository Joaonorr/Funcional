countNeg :: [Int] -> Int
countNeg [] = 0
countNeg xs = if head xs < 0 then 1 + countNeg (tail xs) else countNeg (tail xs)

main = do
    a <- readLn :: IO [Int]
    print $ countNeg a