-- 12) Deslocar todos elementos de uma lista de inteiros k posições para a
-- esquerda.
-- Ex.: > shift 3 [1,5,6,7,3,4,1] -- k=3
-- [7,3,4,1,1,5,6]

-- Função para dividir a lista em duas partes
partirLista :: Int -> [a] -> [[a]]
partirLista _ [] = [[], []]
partirLista 0 xs = [[], xs]
partirLista n (x:xs) = [x : ys, zs]
  where
    [ys, zs] = partirLista (n - 1) xs

-- Função para deslocar a lista
shift :: Int -> [Int] -> [Int]
shift _ [] = []
shift n xs
  | n <= 0 = xs
  | otherwise = f ++ i
    where
      [i, f] = partirLista n xs
