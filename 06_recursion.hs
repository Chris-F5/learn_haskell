maxi :: (Ord a) => [a] -> a
maxi [a] = a
maxi (h:t) = max h (maxi t)
