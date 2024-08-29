-- 8) Verificar se duas listas são disjuntas.
-- Ex.: > disjuntas [1,2,3] [5,4,6,0]
-- True

-- Funcao que verifica se duas listas nao tem elementos em comum (disjuntas)
disjuntas :: [Int] -> [Int] -> Bool
disjuntas [] _ = True
disjuntas (h:t) l = naoEstaNaLista h l && disjuntas t l  


-- Funcao auxiliar que verifica se um numero está ou não na lista
naoEstaNaLista :: Int -> [Int] -> Bool
naoEstaNaLista _ [] = True
naoEstaNaLista n (h:t)
  | h == n = False
  | otherwise = naoEstaNaLista n t 
