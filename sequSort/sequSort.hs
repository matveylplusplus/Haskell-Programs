import Prelude hiding (rem)
rem :: Int -> [Int] -> [Int]
rem _ [] = []
rem toRemove (x:xs)
    | toRemove == x = rem toRemove xs
    | otherwise = x : rem toRemove xs

minListt :: [Int] -> Int
minListt[] = 0--No list
minListt [x] = x--List with one element
minListt (x:xs) = minn x (minListt xs)--List w/ more than 1 element

minn :: Int -> Int -> Int
minn x y 
  | x > y = y
  | otherwise = x

sS :: [Int] -> [Int]
sS [] = []  
sS xs = s : sS (rem s xs)  
    where s = minListt xs

main = putStrLn (show(sS[7, 3, 4, 5, 90, -45]))