add :: Int -> Int -> Int
add x y = x + y

factorial :: Int -> Int
factorial x =
  if x == 1 then 1
  else x * factorial (x - 1)

main :: IO()
main = do
  print (add 2 3)
  print (add 1 2 * 3) -- 9が表示(関数適用は中置演算子より優先度が高い)
  print (add 1 (2 * 3)) -- 7が表示
  print $ add 1 $ 2 * 3 -- 上と同じ
  print $ factorial 5