drop_quotes <- function(x) stringr::str_remove_all(x, '"')

#' Imports data-raw/expression.txt as a tibble
#'
#' This function reads \code{data-raw/expression.txt} as a tibble. This function
#' is meant to be used only by the developer of this package.
#'
#' @return Returns a tibble with the data present in \code{expression.txt}.
#'
#' @importFrom rlang .data
#' @import data.table
#' @export
read_expression_txt <- function() {

  # my_scan <- function(text) list(scan(text = text, what = 'character', sep = ',', quiet = TRUE))

  # readr::read_delim(
  #   here::here('data-raw/expression.txt'),
  #   delim = '\t',
  #   col_types = 'ccccccc',
  #   quote = ''
  # ) %>%
  #   dplyr::mutate(
  #     `GO ids` = stringr::str_split(stages, ','),
  #     stages = stringr::str_split(stages, ','),
  #     locations = my_scan(locations)
  #     )
  data.table::fread(
    here::here('data-raw/expression.txt'),
    sep = '\t',
    header = TRUE,
    colClasses = 'character',
    quote = '',
    na.strings = '',
    encoding = 'UTF-8'
  ) %>%
    dtplyr::lazy_dt(immutable = TRUE) %>%
    dplyr::mutate(
      `GO ids` = stringr::str_split(.data$`GO ids`, ','),
      stages = stringr::str_split(.data$stages, ','),
      locations = purrr::map(stringr::str_split(.data$locations, ','), drop_quotes)
    ) %>%
    dplyr::rename(
      ncbi_gene_id = .data$`Chicken NCBI gene ID`,
      gene_name = .data$`Chicken gene name`,
      geisha_id = .data$`GEISHA ID`,
      ensembl_gene_id = .data$`Ensembl ID`,
      gene_ontology_id = .data$`GO ids`
    ) %>%
    dplyr::relocate('ncbi_gene_id', 'ensembl_gene_id', 'gene_name', 'stages', 'locations', 'geisha_id', 'gene_ontology_id') %>%
    tibble::as_tibble()
}
