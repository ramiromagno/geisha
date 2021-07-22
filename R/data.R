#' @importFrom tibble tibble
NULL

#' GEISHA Expression Data (expression.txt)
#'
#' This dataset contains NCBI Gene ID, NCBI Gene Name, GEISHA ID,
#' Ensembl ID, GO terms, embryo stages and tissue locations.
#'
#' @format A \code{\link[tibble]{tibble}} of 7 variables (columns):
#' \describe{
#' \item{\code{ncbi_gene_id}}{NCBI gene identifier.}
#' \item{\code{ensembl_gene_id}}{Ensembl gene identifier.}
#' \item{\code{gene_name}}{NCBI gene name.}
#' \item{\code{stages}}{Hamilton-Hamburger stages.}
#' \item{\code{locations}}{Anatomical location.}
#' \item{\code{geisha_id}}{GEISHA identifier.}
#' \item{\code{gene_ontology_id}}{Gene ontology identifier.}
#' }
#'
#' Data set generation workflow can be found at the source of this package in
#' \code{data-raw/data.R}.
#'
#' @source
#' Original dataset from:
#' \url{http://geisha.arizona.edu/geisha/expression.txt}.
#'
"expression_txt"

#' Date of last update of download files
#'
#' @format A \code{\link[tibble]{tibble}} of 2 variables:
#' \describe{
#' \item{\code{file}}{File name.}
#' \item{\code{date}}{Date of last update by GEISHA.}
#' }
#'
'last_updates'
