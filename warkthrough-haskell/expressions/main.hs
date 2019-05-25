main = do print m
          print n
          print a
          print b
          -- print _
          print t

m, n :: Int
m = 1 + 3
n = 456
t@(a, b, _, _) = (1, 3.14, "hello", 3)