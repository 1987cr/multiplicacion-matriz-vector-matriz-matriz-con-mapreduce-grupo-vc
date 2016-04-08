map <- function(N, m, v, mem_limit){
  
  multiplicar_vec <- function(mat,vec) {
    return(mat[3]*vec[,2])
  }

  vector <- read.table(v, header = FALSE, nrows = N, sep=",")
  
  vector_size <- object.size(vector)
  cant_lineas_vector <- length(readLines(v))
  cant_lineas_a_leer <- cant_lineas_vector
  
  if(vector_size > mem_limit){
    cant_lineas_a_leer <- as.integer(mem_limit * cant_lineas_vector / vector_size)
  }
    
  saltar_m <- 0
  saltar_v <- 0
  
  for(i in 1:(N)){
    
    j <- 0
    aux <- 0
    lineas_restantes <- cant_lineas_vector
    
    while(lineas_restantes != 0){
      
      if(lineas_restantes < cant_lineas_a_leer){
        cant_lineas_a_leer = lineas_restantes
      }
      
      vector <- read.table(v, header = FALSE, nrows = 1, skip=saltar_v, sep=",")
      
      matriz_vec <- read.table(m, header = FALSE, nrows = cant_lineas_a_leer, skip=saltar_m, sep=",")
      saltar_m <- saltar_m + cant_lineas_a_leer
      
      lineas_restantes <- lineas_restantes - cant_lineas_a_leer
      
      resultado <- matriz_vec[3]*vector[,2]
      
      aux <- j + cant_lineas_a_leer
      index <- 1
      while(j < aux){
        j <- j + 1
        write.table(resultado[index,1], file = paste("temp/",toString(j), sep = ""), row.names = FALSE, col.names = FALSE, sep = ",",append = T)
        
        index <-index + 1
      }
    }
    saltar_v <- saltar_v + 1
  }
  
}