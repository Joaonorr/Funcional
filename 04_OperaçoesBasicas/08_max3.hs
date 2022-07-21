import DynFlags (xFlags)
-- max3

-- Defina a função max3 tal que max3 x y z é o máximo entre x, y e z. Por exemplo,

-- max3 6 2 4 == 6
-- max3 6 7 4 == 7
-- max3 6 7 9 == 9
-- max3 5 2 5 == 5

-- modo 1
max3 :: Int -> Int -> Int -> Int
max3 a b c = maximum [a,b,c]

main = do
    print $ max3 6 2 4 == 6
    print $ max3 6 7 4 == 7
    print $ max3 6 7 9 == 9
    print $ max3 5 2 5 == 5