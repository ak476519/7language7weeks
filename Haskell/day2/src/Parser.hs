module Parser where
    parse :: [Char] -> Double
    parse [] = 0
    parse str = read (deleteComma (drop 1 str)) :: Double

    deleteComma :: [Char] -> [Char]
    deleteComma [] = []
    deleteComma (',':str) = deleteComma str
    deleteComma (h:t) = h : deleteComma t

-- let str = "$2,345,678.99"