module GenSort where
    genSort :: (a -> a -> Bool, [a]) -> [a]
    genSort (_, []) = []
    genSort (_, [x]) = [x]
    genSort (condition, x:xs) = genSort (condition, smaller) ++ [x] 
        ++ genSort (condition, larger)
        where 
            smaller = filter (condition x) xs
            larger = filter (not . condition x) xs

-- condition :: Integral a => a -> a -> Bool
-- let condition x y = x `mod` 13 < y `mod` 13
