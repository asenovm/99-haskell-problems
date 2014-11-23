butLast :: [a] -> a
butLast = head . tail . reverse
