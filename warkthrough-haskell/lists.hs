import Prelude hiding (map)

char = ['a', 'b', 'c']
str = "abc" -- [Char] 型（charと同じ型）
sample = [1..5]

map :: (a -> b) -> [a] -> [b]
map _ [] = []
map f (x:xs) = f x : map f xs

qsort [] = []
qsort (p:xs) = qsort smaller ++ [p] ++ qsort larger -- p:xs は引数のリストを先頭要素pとそれ以外の要素xsに分割
  where smaller = [x | x <- xs, x <  p]
        larger  = [x | x <- xs, x >= p]

main = do
  print char
  print str
  print $ head sample
  print $ tail sample
  print $ [1] ++ [2, 3]
  print $ length sample
  print $ map (2*) sample
  print [x | x <- [1..10], odd x]
  print [(x, y) | x <- [1, 2], y <- [3, 4]]
  print $ qsort [3, 5, 1, 4, 2]