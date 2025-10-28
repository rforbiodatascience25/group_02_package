#' tRNA Replication
#'
#' @param codons 3 letters (RNA nucleotides) sequence
#'
#' @returns A letter which represents the amino acid the codon translates
#'
#' @examples tRNA_rep("UUU")
#'
#' @export

tRNA_rep <- function(codons){
  amino <- paste0(amino_acids[codons], collapse = "")
  return(amino)
}
