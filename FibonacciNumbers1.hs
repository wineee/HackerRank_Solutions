--Contributed by Ron Watkins
module Main where

fibStep (u,v) = (v,u+v)

fibPair 1 = (0,1)
fibPair n = fibStep $ fibPair (n-1)

fastFib n = fst $ fibPair n

-- This part is related to the Input/Output and can be used as it is
-- Do not modify it
main = do
    input <- getLine
    print . fastFib . (read :: String -> Int) $ input
