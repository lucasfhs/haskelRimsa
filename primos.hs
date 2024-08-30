-- 4) Verificar	se	um	número é primo.
-- Ex.: > primo 17
-- True
-- > primo 0
-- False

primos :: Int -> Bool
primos primo
  | length (fatores primo) == 2 = True
  | otherwise = False

fatores :: Int -> [Int]
fatores 0 = []
fatores n = [ i | i <- [1..n `div` 2], n `mod` i == 0 ] ++ [n]