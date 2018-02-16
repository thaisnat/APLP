obter_fatores :: Int -> [Int]
obter_fatores num = [ x | x <- [1 .. num-1], ((mod num x) == 0)]
                  where metade = floor(fromIntegral(num) / 2)

eh_perfeito :: Int -> Bool
eh_perfeito num
             | num == (sum $ obter_fatores num) = True
             | otherwise = False

main = do
    input <- getLine
    let num = read input :: Int
    putStrLn $ show $ eh_perfeito num




