ncall :: (Integral n) => n-> (a -> a) -> a -> a
ncall 1 f x = f x
ncall n f x = f (ncall (n - 1) f x)

-- zipWith (+) [1,2,3] [4,5,6]

flip' :: (a -> b -> c) -> (b -> a -> c)
flip' f = g
    where g x y = f y x -- g x y is function declaration
