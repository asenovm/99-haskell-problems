decode [] = []
decode (x:xs)
    | "Multiple" `elem` w = concat(take (read $ w !! 1 :: Int) $ repeat $ last w) ++ (decode xs)
    | otherwise = last w ++ (decode xs)
    where w = words x
