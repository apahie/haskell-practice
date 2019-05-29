add :: Int -> Int -> Int
add x y = x + y

factorial :: Int -> Int
factorial x =
  if x == 1 then 1
  else x * factorial (x - 1)

power :: Int -> Int -> Int
power _ 0 = 1
power x y = x * power x (y-1)

twice :: (a -> a) -> a -> a
twice f x = f $ f x

main :: IO()
main = do
  print (add 2 3)
  print (add 1 2 * 3) -- 9が表示(関数適用は中置演算子より優先度が高い)
  print (add 1 (2 * 3)) -- 7が表示
  print $ add 1 $ 2 * 3 -- 上と同じ
  print $ factorial 5
  print $ power 2 10
  print $ map id [1, 2, 3, 4, 5]
  print $ map succ [1, 2, 3, 4, 5]
  print $ twice succ 3