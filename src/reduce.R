reduce <- function(N)
{
  for (i in 1:(N))
  {
    dataChunkVector<-0
    for(j in 1:N)
    {
      dataChunkVector <- dataChunkVector+strtoi(read.table(paste("temp/",toString(i),sep = ""), nrows = 1, skip = j-1, header = FALSE, fill = TRUE, sep=",", comment.char = ""))
      dataChunkVector
    }
    write.table(paste(dataChunkVector,sep = ","), file =  'result/mxv-resultado.csv', quote = FALSE, row.names = FALSE, col.names = FALSE, sep = ",",append = T)
  }
}