-- 7) Verificar se todos os elementos de uma lista são distintos.
-- Ex.: > distintos [1,2,4,2,5]
-- False
-- > distintos [3,2,1]
-- True

-- Funcao que verifica se é ou nao distinto
distintos :: [Int] -> Bool
distintos [] = True
distintos (h:t) = naoEstaNaLista h t && distintos t 

-- Funcao auxiliar que verifica se um numero está ou não na lista
naoEstaNaLista :: Int -> [Int] -> Bool
naoEstaNaLista _ [] = True
naoEstaNaLista n (h:t)
  | h == n = False
  | otherwise = naoEstaNaLista n t 
