
divisores :: Int -> [Int]
divisores num = [ x | x <- [1..metade], (mod num x) == 0] 
    where metade = floor(fromIntegral(num) / 2)

ehPrimo :: Int -> Bool
ehPrimo num = (divisores num) == [1]

ehPrimoCasado :: Int -> [Char]
ehPrimoCasado num
    | (ehPrimo num) && (ehPrimo $ num+2) = "PRIMO CASADO!"
    | ehPrimo num = "PRIMO!"
    | otherwise = "NAO PRIMO!"


main = do
    input <- getLine
    let numero = read input :: Int
    print $ ehPrimoCasado numero
