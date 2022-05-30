{-
pr_list :: (Show a) => [a] -> String

pr_list [] = ""
pr_list [x] = (show x)
pr_list (x:xs) = (show x) ++ ", " ++ pr_list xs
-}

minn :: Int -> Int -> Int

minn x y 
  | x > y = y
  | otherwise = x

main = putStrLn (show(minn 7 3))