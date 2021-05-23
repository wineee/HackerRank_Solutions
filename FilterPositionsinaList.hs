f :: [Int] -> [Int]
f [] = []
f lst = g (tail lst)
-- Fill up this Function

g :: [Int] -> [Int]
g [] = []
g lst = (head lst) : f (tail lst)

-- This part deals with the Input and Output and can be used as it is. Do not modify it.
main = do
	inputdata <- getContents
	mapM_ (putStrLn. show). f. map read. lines $ inputdata
