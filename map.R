reduce <- function(N, matriz, vector){
  
  saltar <- 0
  vector <- read.table(vector, header = FALSE, nrows = N, sep=",")
  for (i in 1:(N)){
    matriz_vec <- read.table(matriz, header = FALSE, nrows = N, skip=saltar, sep=",")
    saltar <- saltar + N
                
    
    resultado <- matriz_vec[3]*vector[2]
    resultado
    
    for (j in 1:(length(resultado[,1]))){
      write.table(resultado[j,1], file = paste("temp/",toString(i), sep = ""), row.names = FALSE, col.names = FALSE, sep = ",",append = T)
    }
  }
  
}