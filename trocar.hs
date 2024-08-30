-- 15) Desenvolver uma solução para um quiosque de saque eletrônico que,
-- para um determinado valor, deve entregar o menor número de cédulas
-- de R$1, R$5, R$10, R$50 e R$100, da menor para a maior.
-- Ex.: > trocar 162
-- [1, 1, 10, 50, 100]

trocar :: Int -> [Int]
trocar valor = cedulas valor

cedulas :: Int -> Int -> [Int]

maximo :: Int -> [Int] -> Int
maximo acc (h:t) 
  | (h:t) = (acc + h) : max (acc + h) t 
  |

  -- Função auxiliar para calcular a soma dos elementos ímpares de uma lista
somaImparesAux :: Int -> [Int] -> Int
somaImparesAux acc [] = acc
somaImparesAux acc (h:t)
   | h `mod` 2 /= 0 = somaImparesAux (acc + h) t
   | otherwise = somaImparesAux acc t