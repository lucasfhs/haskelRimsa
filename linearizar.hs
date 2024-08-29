-- 11) Linearizar uma lista de listas de inteiros.
-- Ex.: > linearizar [ [1,2], [5], [0,4,2] ]
-- [1,2,5,0,4,2]

linearizar :: [[Int]] -> [Int]
linearizar [] = []
linearizar (x:xs) = linearizarAux x ++ linearizar xs

linearizarAux :: [Int] -> [Int]
linearizarAux [] = []
linearizarAux (z:zs) = z : linearizarAux zs
