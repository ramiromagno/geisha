#' Get dates of last update of download files
#'
#' This function will scrape on-the-fly GEISHA's downloads page and retrieve the
#' date of last update of the to-be-downloaded files.
#'
#' @param files file names to whose update date is to be checked in the
#'   downloads page.
#'
#' @return Returns a tibble with one file per row.
#'
#' @export
get_dates_of_last_update <- function(files = download_files()) {

  response <- httr::GET(download_page())
  content <- httr::content(response, 'text', encoding = 'UTF-8')
  html <- rvest::read_html(content)

  purrr::map_dfr(files, scrape_date, html)

}
