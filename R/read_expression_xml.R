#' Imports data-raw/expression.xml as a tibble
#'
#' This function reads \code{data-raw/expression.xml} as a tibble. This function
#' is meant to be used only by the developer of this package.
#'
#' @return Returns a tibble with (part of) the data present in \code{expression.xml}.
#'
#' @importFrom rlang .data
#' @import data.table
#' @export
read_expression_xml <- function() {

  my_xml <- xml2::read_xml(here::here('data-raw/expression.xml'))

  gene_name <-
    xml2::xml_children(my_xml) %>%
    xml2::xml_attr(attr = 'name')

  ncbi_gene_id <-
    xml2::xml_children(my_xml) %>%
    xml2::xml_attr(attr = 'NCBI_gene_ID')

  geisha_id <-
    xml2::xml_find_all(my_xml, xpath = 'gene/GEISHA_entries/entry') %>%
    xml2::xml_attr(attr = 'GEISHA_ID')

  stage <- xml2::xml_find_all(my_xml, xpath = 'gene/GEISHA_entries/entry/stages/stage') %>%
    xml2::xml_attr(attr = 'stage')

  my_xml %>%
    xml2::as_list() %>%
    tibble::as_tibble() %>%
    dplyr::mutate(gene_name = gene_name, ncbi_gene_id = ncbi_gene_id) %>%
    tidyr::unnest_longer('genes') %>%
    tidyr::pivot_wider(names_from = 'genes_id', values_from = 'genes') %>%
    tidyr::unnest_longer('GEISHA_entries') %>%
    dplyr::select(-c('GO_IDs', 'GEISHA_entries_id')) %>%
    dplyr::mutate(geisha_id = geisha_id) %>%
    tidyr::unnest_longer('GEISHA_entries') %>%
    dplyr::select(-'GEISHA_entries_id') %>%
    tidyr::unnest_longer('GEISHA_entries') %>%
    dplyr::mutate(stage = stage) %>%
    dplyr::select(-'GEISHA_entries_id') %>%
    tidyr::unnest_longer('GEISHA_entries') %>%
    dplyr::select(-'GEISHA_entries_id') %>%
    tidyr::unnest_longer('GEISHA_entries') %>%
    dplyr::select(-'GEISHA_entries_id') %>%
    tidyr::unnest_longer('GEISHA_entries') %>%
    dplyr::rename(location = GEISHA_entries) %>%
    dplyr::mutate(stage = factor(stage, levels = geisha::hh_stages())) %>%
    dplyr::relocate(ncbi_gene_id, gene_name, geisha_id, stage, location)
}
