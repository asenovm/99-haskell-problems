palindrome :: (Eq a) => [a] -> Bool
palindrome x = x == (reverse x)
