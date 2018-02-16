

valor :: String -> Double -> Double
valor veiculo n_pessoas
     | veiculo == "carro" = 5.0 + (n_pessoas * 1.5)
     | veiculo == "moto" = 2.0 + (n_pessoas * 1.5)
     | veiculo == "van" = 15.0 + (n_pessoas * 1.5)
     | veiculo == "onibus" = 50.0 + (n_pessoas * 1.5) 
     | veiculo == "bicicleta" = 0.0 + (n_pessoas * 1.5)
    

main = do 
          veiculo <- getLine
          n_pessoas <- readLn
          print (valor veiculo n_pessoas)

