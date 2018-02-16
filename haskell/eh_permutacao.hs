main = do
         palavra1 <- getLine
         palavra2 <- getLine
         putStrLn $ show $ verifica_permuta palavra1 palavra2


verifica_permuta :: String -> String -> Bool
verifica_permuta [] [] = True 
verifica_permuta l1 [] = False
verifica_permuta [] l2 = False
verifica_permuta l1 (head:tail)
   | (head `elem` l1) = verifica_permuta (remove [head] l1) tail
   | otherwise = False

remove :: String -> String -> String
remove [] st = []
remove st [] = []
remove st (head:tail)
    | ([head] == st) = tail
    | otherwise = [head] ++ (remove st tail)

