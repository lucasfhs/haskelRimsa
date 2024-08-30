-- 2) Calcular	o	somatório dos	elementos	ímpares de	uma	lista	de	inteiros.
-- Ex.: > somaImpares [1,3,2,7,4,6,5] -- 16=1+3+7+5
-- 16

-- Função para calcular a soma dos elementos ímpares de uma lista
somaImpares :: [Int] -> Int
somaImpares lista = somaImparesAux 0 lista

-- Função auxiliar para calcular a soma dos elementos ímpares de uma lista
somaImparesAux :: Int -> [Int] -> Int
somaImparesAux acc [] = acc
somaImparesAux acc (h:t)
   | h `mod` 2 /= 0 = somaImparesAux (acc + h) t
   | otherwise = somaImparesAux acc t
