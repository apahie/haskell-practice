main = do print m
          print n
          print a
          print b
          -- print _
          print t
          print(getValue 0 Nothing)
          print(getValue 0 (Just 5))

m, n :: Int
m = 1 + 3
n = 456
t@(a, b, _, _) = (1, 3.14, "hello", 3)

getValue defval maybe =
  case maybe of
    Nothing -> defval
    -- _ -> defval
    Just x -> x