-- do 記法
-- lcm' (x:y:_) = lcm x y
-- main = do
--   input <- getLine
--   print . lcm' . map read $ words input
--   main

-- 通常記法
-- lcm' (x:y:_) = lcm x y
-- main = getLine >>= (\input -> (print . lcm' . map read $ words input)) >> main

-- ラムダ式を除去
-- lcm' (x:y:_) = lcm x y
-- main = getLine >>= print . lcm' . map read . words >> main

-- この時点でのゴルフコード
-- l(x:y:_)=lcm x y
-- m@main=getLine>>=print.l.map read.words>>m

-- 色々試してみる
-- l (x:y:_) = lcm x y
-- main = (>>=) getLine ((.) print . (.) l $ (.) (map read) words) >> main

-- モウダメポ
-- l (x:y:_) = lcm x y
-- main = getLine >>= ((print .) . (.) l $ ((map read .) words) >> main

-- 畳み込んでみる
-- main = getLine >>= print . foldl1 lcm . map read . words >> main

-- 畳み込みながら read してみる
-- main = getLine >>= print . foldr (lcm . read) 1. words >> main

-- ゴルフしてみる
m@main=getLine>>=print.foldr(lcm.read)1.words>>m
