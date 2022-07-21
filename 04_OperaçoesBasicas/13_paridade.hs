-- paridade

-- --IN :  Lista u de valores booleanos
-- --OUT: Se o total de Trues é ímpar então retorne True e do contrário False
-- paridade [] == False
-- paridade [True,True,False] == False
-- paridade [True,False,True,False,True] == True
-- paridade [False,True,False] == True

paridade :: [Bool] -> Bool
paridade [] = False
paridade xs = odd $ length [x | x <- xs, x]

main = do
    a <- readLn :: IO [Bool]
    print $ paridade a