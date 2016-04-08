memlimit <- function(size){
  if (size == -1){
    return(memory.limit())
  }else{
    return(size)
  }
  
}

vector <- read.table("data/tblxkv10.csv")
