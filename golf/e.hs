f :: Integer -> Integer
f 0 = 10^110
f n = 10^110 `div` (product [1..n])

main = print $ sum (map f [0..100]) `div` 10^10
