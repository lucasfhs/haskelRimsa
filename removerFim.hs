-- 13) Remover os n últimos elementos de uma lista de inteiros.
-- Ex.: > removerFim 2 [1,2,3,4,5,6] -- n=2
-- [1,2,3,4]

-- Funcao para remover o fim da lista
removerFim :: Int -> [Int] -> [Int]
removerFim n x
  | n >= (length x) = []
  | n < 0 = []
  | otherwise = i
  where 
    [i, f] = partirLista ((length x) - n) x 


-- Função para dividir a lista em duas partes
partirLista :: Int -> [a] -> [[a]]
partirLista _ [] = [[], []]
partirLista 0 xs = [[], xs]
partirLista n (x:xs) = [x : ys, zs]
  where
    [ys, zs] = partirLista (n - 1) xs