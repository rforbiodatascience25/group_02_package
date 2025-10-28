#' Split a sequence into codons
#'
#' @param sequence The sequence to be split into codons. Should be a character vector
#' @param start The starting position. Positions before are not split into codons and not returned. Should be integer
#'
#' @returns A character vector with codons
#'
#' @examples
#' split_into_codons("AUGUUUUAA")
#'
#' @export


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
