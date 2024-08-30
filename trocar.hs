-- 15) Desenvolver uma solução para um quiosque de saque eletrônico que,
-- para um determinado valor, deve entregar o menor número de cédulas
-- de R$1, R$5, R$10, R$50 e R$100, da menor para a maior.
-- Ex.: > trocar 162
-- [1, 1, 10, 50, 100]

-- Função principal que calcula as cédulas necessárias
trocar :: Int -> [Int]
trocar valor = cedulas valor [100, 50, 10, 5, 1]

-- Função auxiliar que calcula as cédulas necessárias
cedulas :: Int -> [Int] -> [Int]
cedulas 0 _ = []
cedulas valor (h:t)
  | valor >= h = cedulas (valor - h) (h:t) ++ [h]
  | otherwise  = cedulas valor t
