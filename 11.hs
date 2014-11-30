pack :: (Eq a) => [a] -> [[a]]
pack [] = []
pack (x:xs) = (x:(takeWhile (==x) xs)):pack(dropWhile (==x) xs)

encode :: (Eq a, Show a) => [a] -> [[Char]]
encode list = map encoder $ pack list

encoder :: (Show a) => [a] -> [Char]
encoder [x] = "Single " ++ (show x)
encoder (x:xs) = "Multiple " ++ (show(length(x:xs))) ++ " " ++ (show x)
