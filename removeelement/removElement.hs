import Prelude hiding (rem)
rem :: Int -> [Int] -> [Int]
rem _ [] = []
rem toRemove (x:xs)
    | toRemove == x = rem toRemove xs
    | otherwise = x : rem toRemove xs


main = putStrLn (show(rem (-45) [7, 3, 4, 5, 90, -45]))