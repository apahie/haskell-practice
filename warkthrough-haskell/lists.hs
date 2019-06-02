import Prelude hiding (map)

char = ['a', 'b', 'c']
str = "abc" -- [Char] 型（charと同じ型）
sample = [1, 2, 3]

map :: (a -> b) -> [a] -> [b]
map _ [] = []
map f (x:xs) = f x : map f xs

main = do
  print $ char
  print $ str
  print $ head sample
  print $ tail sample
  print $ [1] ++ [2, 3]
  print $ length sample
  print $ map (2*) sample