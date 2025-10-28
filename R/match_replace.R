#' Match and replace
#'
#' @param dna_sequence A sequence that is being matched.
#'
#' @returns The function of the output is the replaced sequence that is made from param.
#' @examples transribe_dna("ATATAT")
#' @export
#'
transribe_dna_to_rna <- function(dna_sequence){
  rna_sequence <- gsub("T", "U", dna_sequence)
  return(rna_sequence)
}

