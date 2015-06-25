-- Under construction...
f (a:b) = b ++ [a]
main = interact $ unlines.f.lines

n = do
  first <- getLine
  interact (\x -> x ++ first)

main = do
  first <- getLine
  (interact . flip (++)) first
