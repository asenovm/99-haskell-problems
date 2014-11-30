pack :: (Eq a) => [a] -> [[a]]
pack [] = []
pack (x:xs) = (x:(takeWhile (==x) xs)):pack(dropWhile (==x) xs)

encode list = map (\xs -> (length xs, head xs)) $ pack list
