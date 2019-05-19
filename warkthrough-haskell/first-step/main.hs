m = 123
n = 456
add x y = x + y
-- this is line comment
main = do
  putStrLn "hello, world"　-- this is line comment too
  putStrLn "goodbye"
  print(add m n)
{- block comment can
  {- be nested -}
-}