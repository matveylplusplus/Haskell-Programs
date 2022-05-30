minList :: [Int] -> Int
minList []       = 0
minList [x]      = x
minList (x:xs)   = minn x (minList xs)

minn :: Int -> Int -> Int
minn x y 
  | x > y = y
  | otherwise = x

main = putStrLn (show(minList[7, 3, 4, 5, 90, 45]))