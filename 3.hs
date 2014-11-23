elementAt :: Int -> [a] -> a
elemenetAt _ [] = []
elementAt 0 (x:xs) = x
elementAt index (x:xs) = elementAt (index-1) xs
