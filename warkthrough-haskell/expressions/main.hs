main = do print m
          print n
          print a
          print b
          -- print _
          print t
          print (getValue 0 Nothing)
          print (getValue 0 (Just 5))
          print (getValue 0 (Just (-5)))
          print (absolute(-10))
          print (area 10.0)
          print (area2 2.0)

m, n :: Int
m = 1 + 3
n = 456
t@(a, b, _, _) = (1, 3.14, "hello", 3)

getValue defval maybe =
  case maybe of
    Nothing -> defval
    -- _ -> defval
    Just x | x > 0 -> x
           | otherwise -> -x -- otherwise is equivalent to True

absolute x = if x < 0 then -x else x

area r =
  let pi = 3.14
      square x = x * x
  in pi * square r

area2 r = pi * square r
  where
    pi = 3.14
    square x = x * x