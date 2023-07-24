-- homogeneous lists
numbers = [2,4,6,7,10]
letters = ['a', 'b', 'c']

-- Colon (:) is the 'cons' operator.
-- Pushing to front is faster than appending to back of list.
numbers' = 1 : numbers

best_letter = letters !! 2
error_letter = letters !! 8

-- Result true only if true for each pair.
result = [1, 2, 3] > [0, 1, 2, 4]

letter_b = head (tail letters)

-- I'm guessing init is initial?
waiting = init letters -- evaluates to ["a", "b"]

is_empty = null numbers

cba = reverse letters

-- returns the first n elements from list
early = take 3 numbers -- [2, 4, 6]
late = drop 3 numbers -- [7, 10]

alphabet = ['a'..'z'] ++ ['A'..'Z']
-- first,second..last_considered
some_evens = [2,4..21] -- [2,4,6,8,10,12,14,16,18,20]
desc = [10,9..0]

-- Integral includes both Int and Integer.
-- Int is fixed width, Integer is arbitrary.
-- When you hear integral, don't think calculus; think 'important'.
list_comprehension = take 4 [fromIntegral x / 2 | x <- [1,2..], x `mod` 3 == 0, x /= 9]
-- /= not equal to (like C's !=)

fizz_buzz = [
  if x `mod` 15 == 0 then "fizzbuzz"
  else if x `mod` 3 == 0 then "fizz"
  else if x `mod` 5 == 0 then "buzz"
  else show x
  | x <- [1..]]

triplets = [(a, b, c) | c <- [1..40], a <- [1..c], b <- [1..c],  a^2 + b^2 == c^2]
