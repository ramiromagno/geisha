#' Hamilton-Hamburguer stages
#'
#' This function returns a character vector of Hamilton-Hamburguer (HH) stages.
#'
#' @param hh_prefix A logical indicating whether to include the prefix
#'   \code{'HH'} in the after-laying egg stages, i.e., those stages numbered
#'   with arabic numerals.
#'
#' @return A character vector of Hamilton-Hamburguer (HH) stages.
#' @export
hh_stages <- function(hh_prefix = FALSE) {
# https://embryology.med.unsw.edu.au/embryology/index.php?title=Hamburger_Hamilton_Stages
  if(hh_prefix) {
    return(c(as.character(utils::as.roman(10:14)), paste0('HH', as.character(c(1:46)))))
  } else {
    return(c(as.character(utils::as.roman(10:14)), as.character(c(1:46))))
  }
}
