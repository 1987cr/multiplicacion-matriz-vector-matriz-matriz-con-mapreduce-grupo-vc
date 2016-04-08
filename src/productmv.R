source("src/map.R")
source("src/reduce.R")

productmv <- function(N, m, v, mem_limit){
  map(N,"data/tblAkv10x10ident.csv","data/tblxkv10.csv", mem_limit)
  reduce(N)
}




