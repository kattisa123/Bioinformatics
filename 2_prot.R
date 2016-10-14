# string <- "AUGGCCAUGGCGCCCAGAACUGAGAUCAAUAGUACCCGUAUUAACGGGUGA"

string <- paste(readLines("data/rosalind_prot.txt"), collapse=" ")

# read the gene table

gen_table <- read.csv("gen_table_complete.csv")

###Devide into triples

match_proteins <- function(string){
  string <- substring(string, seq(1, nchar(string), 3), seq(3, nchar(string), 3))
  output <- toString(gen_table$protein[match(string, gen_table$gens)])
  output <- gsub(", ", "", output)
  return(output)
}

match_proteins(string)
