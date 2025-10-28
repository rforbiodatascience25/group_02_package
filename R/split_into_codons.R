split_into_codons <- function(sequence, start = 1){
  length <- nchar(sequence)
  codons <- substring(sequence,
                      first = seq(from = start,
                                  to = length - 3 + 1,
                                  by = 3),
                      last = seq(from = 3 + start - 1,
                                 to = length,
                                 by = 3))
  return(codons)
}
