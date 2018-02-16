coordenadas :: (Int,Int) -> Int -> String-> [(Int,Int)]
coordenadas (a,b) tamanho posicao | (posicao == "vertical") = [(a,x) | x <-[b,(b+1)..(b + tamanho - 1)]]
                                             | otherwise = [ (x,b) | x <-[a,(a+1)..(a + tamanho - 1)] ]

verifica_colisao :: [(Int,Int)] -> [(Int,Int)] -> Bool
verifica_colisao coord_navio1 coord_navio2 = ((length [ x | x <- coord_navio1 , x `elem` coord_navio2 ]) == 0)
 
main = do
    x_navio1 <- getLine
    y_navio1 <- getLine
    tamanho_navio1 <- getLine
    posicao1 <- getLine
   
    x_navio2 <- getLine
    y_navio2 <- getLine
    tamanho_navio2 <- getLine
    posicao2 <- getLine
      
    let x_n1 = (read  x_navio1) :: Int
    let y_n1 = (read y_navio1) :: Int
    let tam_navio1 = (read tamanho_navio1) :: Int
   
    let x_n2 = (read x_navio2) :: Int
    let y_n2 = (read y_navio2) :: Int
    let tam_navio2 = (read tamanho_navio2) :: Int
      
    let navio1 = coordenadas (x_n1, y_n1) tam_navio1 posicao1
    let navio2 = coordenadas (x_n2, y_n2) tam_navio2 posicao2
 
    putStrLn $ show (verifica_colisao navio1 navio2)
