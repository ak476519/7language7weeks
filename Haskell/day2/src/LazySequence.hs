-- Write a function that takes an argument x and returns a lazy
--      sequence that has every third number, starting with x. 
-- Then, write a function that includes every fifth number, beginning with y.
-- Combine these functions through composition to return every
--      eighth number, beginning with x + y.
module LazySequence where
    xseq :: Integer -> [Integer]
    xseq x = take 10 [x, x+3 ..]

    yseq :: (Num a, Enum a) => a -> [a]
    yseq y = take 10 [y, y+5 ..]
    
    combineSeq :: (Num a, Enum a) => a -> a -> [a]  
    combineSeq x y = take 10 [x+y, x+y+8 ..]