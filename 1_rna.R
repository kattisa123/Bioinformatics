str <- paste(readLines("data/rosalind_rna.txt"), collapse=" ")

DNK_RNK <- function(string){
  str <- gsub("T", "U", string)
  return(str)
}

DNK_RNK(str)
