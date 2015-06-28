-- まずはシンプルに
getInt = fmap (\x -> read x :: Int) getLine
main = do
  a <- getInt
  b <- getInt
  print $ gcd a b
