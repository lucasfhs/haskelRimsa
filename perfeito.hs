-- 5) Verifique se um número é perfeito, isto é, é igual a soma de seus
-- divisores (exceto o próprio número).
-- Ex.: > perfeito 28 -- 28=1+2+4+7+14
-- True
-- Funcao auxiliar que calcula os fatores de um valor recebido
fatores :: Int -> [Int]
fatores 0 = []
fatores n = [ i | i <- [1..n `div` 2], n `mod` i == 0 ]
-- Funcao que calcula o somatorio de um valor recebido
somatorio :: [Int] -> Int
somatorio [] = 0
somatorio (h:t) = h + somatorio t

perfeito :: Int -> Bool 
perfeito n
  | otherwise =  n == somatorio (fatores n) 
