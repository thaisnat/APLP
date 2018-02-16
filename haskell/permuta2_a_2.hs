main = do
   palavra <- getLine
   putStrLn $ permuta palavra
  
permuta :: String -> String
permuta [x,y] = [y,x]
permuta (x:xs) = [head xs] ++ [x] ++ (permuta (tail xs ))
