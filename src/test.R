rm(list=ls())

setwd("~/Documents/Uni/CD")

source("src/productmv.R")
source("src/memlimit.R")

unlink("result/", recursive = TRUE)
unlink("temp/", recursive = TRUE)
dir.create("result/")
dir.create("temp/")

mem_limit <- memlimit(1000)

productmv(10,"data/tblAkv10x10ident.csv","data/tblxkv10.csv", mem_limit)
