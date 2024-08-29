-- 9) Verificar se uma lista de inteiros é palíndromo.
-- Ex.: > palindromo [1,2,3,4,3,2,1]
-- True

-- Função principal para verificar se uma lista é um palíndromo
palindromo :: [Int] -> Bool
palindromo xs = xs == inverterLista xs []

-- Função auxiliar para inverter uma lista de forma manual
inverterLista :: [Int] -> [Int] -> [Int]
inverterLista [] acc = acc
inverterLista (h:t) acc = inverterLista t (h:acc)