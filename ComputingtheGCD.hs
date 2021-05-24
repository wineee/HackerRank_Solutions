module Main where


gcd' :: Integral a => a -> a -> a
-- Complete this function
gcd' a b = if b == 0 then a else gcd' b (a `mod` b)

-- This part is related to the Input/Output and can be used as it is
-- Do not modify it
main = do
  input <- getLine
  print . uncurry gcd' . listToTuple . convertToInt . words $ input
 where
  listToTuple (x:xs:_) = (x,xs)
  convertToInt = map (read :: String -> Int)
