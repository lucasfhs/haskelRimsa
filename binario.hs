-- 6) Função que retorna uma lista com a representação em binário de um
-- número inteiro.
-- Ex.: > binario 20
-- [1,0,1,0,0]

-- Funcao que retorna o valor binario
binario :: Int -> [Int]
binario 0 = []
binario n = binario (n `div` 2) ++ [n `mod` 2]
