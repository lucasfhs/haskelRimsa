-- 1) Defina uma função recursiva para o cálculo de potência de dois
-- números inteiros, onde o primeiro número é elevado ao segundo. Não
-- se pode usar o operador de potência (^).
-- Ex.: > potencia 2 3 -- 8=2*2*2
-- 8
potencia :: Int -> Int -> Int
potencia a b
  | b <= 0    = 1
  | otherwise = a * potencia a (b-1)
