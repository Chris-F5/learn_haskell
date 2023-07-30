increase :: [Integer] -> [Integer]
increase a = [x + 1 | x <- a]

-- The type of (==) is:
-- (Eq a) => a -> [a] -> Bool

-- minBound :: Int     evaluates to       -9223372036854775808
-- number literals are also polymorphic constants
