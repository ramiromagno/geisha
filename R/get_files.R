#' Get the files available to download from GEISHA
#'
#' This function retrieves those files available for download from the
#' downloads' page of the GEISHA website. These files are saved to
#' \code{data-raw/} are meant to be used only by the package developer.
#'
#' @param files The name of the files to be downloaded. This parameter is set by
#'   default to download all available files.
#'
#' @export
get_files <- function(files = download_files()) {

  urls <- glue::glue('{geisha_server()}/{files}')
  destfiles <- here::here(glue::glue('data-raw/{files}'))

  download_file(url = urls, destfile = destfiles)

}
