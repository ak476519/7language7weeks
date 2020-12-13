-- Use a partially applied function to define:
-- a function that will return half of a number 
-- and another that will append \n to the end of any string.
module Q5 where
    divideBy x y = y / x
    takeHalf = divideBy 2

    offerAtBack str1 str2 = str2 ++ str1
    newLineAfter = offerAtBack "\n" 