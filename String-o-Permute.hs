-- Enter your code here. Read input from STDIN. Print output to STDOUT

swapEvens :: String -> String
swapEvens [] = []
swapEvens (x:y:xs) = y:x:swapEvens xs

main = do
    n <- getLine
    contents <- getContents
    let strings = words contents
    putStr $ unlines $ map swapEvens strings
