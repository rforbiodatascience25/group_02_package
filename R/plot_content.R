#' Plot the content of each amino-acid in a protein
#'
#' @param protein a sequence of letters(amino-acids)
#'
#' @importFrom ggplot2 ggplot aes geom_col theme_bw theme
#' @importFrom stringr str_split boundary str_count
#'
#' @examples plot_content("SPLIIFMRRE")
#' @returns a plot with the amount of each amino-acid
#' @export

plot_content <- function(protein){
  # split each character of the sequence
  seq_count <- protein |>
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) |>
    as.character() |>
    unique()
  # return a count for every amino-acid found and transfer it in a dataframe
  counts <- sapply(seq_count, function(amino_acid) stringr::str_count(string = protein, pattern =  amino_acid)) |>
    as.data.frame()

  colnames(counts) <- c("Counts")
  counts[["Protein"]] <- rownames(counts)

  # create a plot showing the population of each amino-acid in the given sequence
  amino_plot <- counts |>
    ggplot2::ggplot(ggplot2::aes(x = Protein, y = Counts, fill = Protein)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw() +
    ggplot2::theme(legend.position = "none")

  return(amino_plot)
}
