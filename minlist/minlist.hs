minListt :: [Int] -> Int
minListt[] = 0--No list
minListt [x] = x--List with one element
minListt (x:xs) = minn x (minListt xs)--List w/ more than 1 element

minn :: Int -> Int -> Int
minn x y 
  | x > y = y
  | otherwise = x

main = putStrLn (show(minListt[7, 3, 4, 5, 90, -45]))