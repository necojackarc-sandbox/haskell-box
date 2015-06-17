-- Under construction...

main = do
    c <- fmap lines getContents
    putStr . unlines . tail $ c
    putStrLn $ head c
