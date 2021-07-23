## code to prepare `data` dataset goes here

library(geisha)

# Download files to data-raw/
geisha::get_files()

# Get each files' date of last update
last_updates <- geisha::get_dates_of_last_update()

# Generate a tibble by reading data from data-raw/expression.txt
expression_txt <- geisha::read_expression_txt()

# Generate a tibble by reading data from data-raw/expression.xml
expression_xml <- geisha::read_expression_xml()

usethis::use_data(last_updates, overwrite = TRUE)
usethis::use_data(expression_txt, overwrite = TRUE)
usethis::use_data(expression_xml, overwrite = TRUE)
