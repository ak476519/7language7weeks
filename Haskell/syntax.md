Haskell

1. get type of function: `:t [function name]`
2. take, drop  

   - take: `take 5 [list]` take first 5 elements of list
   - drop: `drop 5 [list]` get everything after first 5 elements of list
  
3. haskell function structure:  
   `(\param1 .. paramn -> function_body)`
4. filter, foldl, foldr  
   `foldl1 (+) [1 .. 3]` is equivalent to `1+2+3`
5. partially define a function

   ```haskell
   let prod x y = x * y
   let double = prod 2 -- double = 2 * y
   let triple = prod 3
   double 5 -- returns 2 * 5 = 10
   ```

6. nesting functions  
   f(g(x)) is written as `f . g x` in haskell  
7. jk