#' @keywords internal
scrape_date <- function(file, html) {

  css <- glue::glue('a:contains("{file}")')
  . = NULL # Just to keep devtools::check() happy.

  date <-
    html %>%
    rvest::html_elements(css = css) %>%
    rvest::html_text2() %>%
    stringr::str_match('\\((.*)\\)') %>%
    .[, 2] %>%
    lubridate::parse_date_time('mdY HM', tz = 'GMT-7') # GMT-7: Arizona State University, Arizona is GMT/UTC - 7h during Standard Time

  tibble::tibble(file, date)
}
