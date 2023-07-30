import Data.Bits

-- pattern matching
lucky :: (Integral a) => a -> String
lucky 7 = "seven"
lucky _ = "not seven"

factorial :: (Integral a) => a -> a
factorial 0 = 1
factorial x = x * factorial (x - 1)

vec all@(a, b, c) = show a ++ show b ++ show c ++ show all

-- guards

fact n
  | n >= 0 = product [1..n]
  | otherwise = error "negative factorial"

mult :: Integer -> Integer
mult n = a * b
  where a = (.&.) n 0xf
        b = (.&.) (n `div` 2^4) 0xf

cube_surface l =
  let face_area = l * l
      face_count = 6
  in face_area * face_count

factorial' :: (Integral a) => a -> a
factorial' n = case n of 0 -> 1
                         n -> n * factorial' (n - 1)
