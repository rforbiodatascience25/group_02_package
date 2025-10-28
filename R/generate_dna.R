#' DNA nucleotides
#'
#' @param length Length specifies how many nucleotides are added in a random order.
#'
#' @returns      Returns bases with no spaces and randomly picks nucleotides for creating DNA sequence.
#'
#' @examples generate_dna(5)
#'
#' @export
generate_dna <- function(length){
  nucleotides <- sample(c("A", "T", "G", "C"), size = length, replace = TRUE)
  sequence <- paste0(nucleotides, collapse = "")
  return(sequence)
}
