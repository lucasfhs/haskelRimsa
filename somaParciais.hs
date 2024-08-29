-- 10) Calcular todas as somas parciais de uma lista de inteiros.
-- Ex.: > somaParciais [1,2,3,4] -- [1,1+2,1+2+3,1+2+3+4]
-- [1, 3, 6, 10]

-- Função para calcular a soma parcial de uma lista
somaParciais :: [Int] -> [Int]
somaParciais lista = somaParciaisAux 0 lista

-- Função auxiliar para calcular a soma parcial de uma lista
somaParciaisAux :: Int -> [Int] -> [Int]
somaParciaisAux _ [] = []
somaParciaisAux acc (h:t) = (acc + h) : somaParciaisAux (acc + h) t
