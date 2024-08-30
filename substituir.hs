-- 3) Substituir todos elementos de um determinado valor de uma lista de
-- inteiros por um outro valor.
-- Ex.: > substituir 1 0 [1,2,1,3,1]
-- [0,2,0,3,0]

substituir :: Int -> Int -> [Int] -> [Int]
substituir _ _ [] = []
substituir a b (h:t)
  | h == a =  b : (substituir a b t)
  | otherwise = h : (substituir a b t)