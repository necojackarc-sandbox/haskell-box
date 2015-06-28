-- まずはシンプルに
-- main = do
--   a <- readLn
--   b <- readLn
--   print $ gcd a b

-- そのままゴルフ
-- r=readLn
-- main=do a<-r;b<-r;print$gcd a b

r = readLn
main = r >>= (\x -> r >>= (\y -> print $ gcd x y))

