-- 15) Desenvolver uma solução para um quiosque de saque eletrônico que,
-- para um determinado valor, deve entregar o menor número de cédulas
-- de R$1, R$5, R$10, R$50 e R$100, da menor para a maior.
-- Ex.: > trocar 162
-- [1, 1, 10, 50, 100]

trocar :: Int -> [Int]
trocar valor = cedulas valor

cedulas :: Int -> [Int]
cedulas n = [maximo n [100,50,10,5,1]] ++ [ i = n | i > 0, n = n -(maximo n [100,50,10,5,1])]

maximo :: Int -> [Int] -> Int 
maximo max (h:t)
  | max > h = h   
  | otherwise = maximo max t
