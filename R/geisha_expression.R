#' @importFrom tibble tibble
NULL

#' GEISHA Expression Data
#'
#' This dataset contains NCBI Gene ID, NCBI Gene Name, GEISHA ID, Birdbase ID,
#' Ensembl ID, GO terms, embryo stage and tissue locations.
#'
#' @format A \code{\link[tibble]{tibble}} 8 variables (columns):
#' \describe{
#' \item{\code{ncbi_gene_id}}{NCBI gene identifier.}
#' \item{\code{ensembl_gene_id}}{Ensembl gene identifier.}
#' \item{\code{gene_name}}{NCBI gene name.}
#' \item{\code{stage}}{Hamilton-Hamburger stage.}
#' \item{\code{tissue}}{Anatomical location.}
#' \item{\code{geisha_id}}{GEISHA identifier.}
#' \item{\code{birdbase_id}}{BirdBase identifier.}
#' \item{\code{gene_ontology_id}}{Gene ontology identifier.}
#' }
#'
#' Data set generation workflow can be found at the source of this package in
#' \code{data-raw/geisha_expression.R}. Original dataset from:
#' \url{http://geisha.arizona.edu/geisha/expression.txt}.
#'
"geisha_expression"
