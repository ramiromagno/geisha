## code to prepare `geisha_expression` dataset goes here
library(tidyverse)

url <- 'http://geisha.arizona.edu/geisha/expression.txt'
expression <- readr::read_tsv(url, col_types = 'cccccccc')

hh_stages <- c(as.character(as.roman(10:14)), as.character(c(1:44)))

geisha_expression <-
  expression %>%
  tidyr::separate_rows('stages', sep = ',') %>%
  tidyr::separate_rows('locations', sep = ',\\s?') %>% # Use ',\\s?' instead of ', because of "Mesoderm, early"
  dplyr::mutate(stages = factor(stages, levels = hh_stages)) %>%
  dplyr::rename(
    stage = stages,
    tissue = locations,
    ncbi_gene_id = `Chicken NCBI gene ID`,
    gene_name = `Chicken gene name`,
    geisha_id = `GEISHA ID`,
    birdbase_id = `BirdBase ID`,
    ensembl_gene_id = `Ensembl ID`,
    gene_ontology_id = `GO ids`
  ) %>%
  dplyr::arrange(ncbi_gene_id, stage, tissue) %>%
  dplyr::relocate(ncbi_gene_id, ensembl_gene_id, gene_name, stage, tissue, geisha_id, birdbase_id, gene_ontology_id)

usethis::use_data(geisha_expression, overwrite = TRUE)
