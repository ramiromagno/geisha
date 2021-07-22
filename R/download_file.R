#' @keywords internal
download_file <- function(url, destfile, ...) {
  purrr::walk2(url, destfile, utils::download.file, ...)
}
