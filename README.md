
<!-- README.md is generated from README.Rmd. Please edit that file -->

# geisha <img src='man/figures/logo.svg' align="right" height="139" />

<!-- badges: start -->
<!-- badges: end -->

`{geisha}` is an R data package that provides the expression dataset
from the Gallus Expression in Situ Hybridization Analysis
([GEISHA](http://geisha.arizona.edu/geisha/about.jsp)) project.

The data here provided is of 2021-07-22 12:16:00. You can check whether
this is the latest version by visiting
<http://geisha.arizona.edu/geisha/downloads.jsp>.

## Installation

You can install the current version of geisha with:

``` r
# install.packages("remotes")
remotes::install_github("ramiromagno/geisha")
```

## Usage

At this moment this package provides only two datasets: `expression_txt`
and `expression_xml`.

### Dataset `expression_txt`

``` r
library(geisha)

expression_txt
#> # A tibble: 5,594 x 7
#>    ncbi_gene_id ensembl_gene_id gene_name stages   locations geisha_id          
#>    <chr>        <chr>           <chr>     <list>   <list>    <chr>              
#>  1 373885       <NA>            FZD10     <chr [2… <chr [1]> Frizzled10.Chapman…
#>  2 373885       <NA>            FZD10     <chr [4… <chr [6]> Fz10.Chapman.2008  
#>  3 373885       <NA>            FZD10     <chr [1… <chr [1]> Fz10.Chesnutt.2004 
#>  4 373885       <NA>            FZD10     <chr [3… <chr [4]> FZ10.Quinlan.2009  
#>  5 373885       <NA>            FZD10     <chr [1… <chr [2]> FZD10.Geetha-Logan…
#>  6 373885       <NA>            FZD10     <chr [2… <chr [1]> FZD10.McCabe.2007  
#>  7 373885       <NA>            FZD10     <chr [6… <chr [8]> FZD10.Paxton.2010  
#>  8 373885       <NA>            FZD10     <chr [1… <chr [1]> FZD10.Sienknecht.2…
#>  9 373886       <NA>            FZD9      <chr [2… <chr [4]> Frizzled9.Chapman.…
#> 10 373886       <NA>            FZD9      <chr [2… <chr [1]> Frz-9.Fuhrmann.2003
#> # … with 5,584 more rows, and 1 more variable: gene_ontology_id <list>
```

Each row refers to a gene found to be expressed in the chick embryo at a
specific set of Hamilton-Hamburger stages (`stages`) and anatomical
locations (`locations`), obtained from a specific source (indicated by
the `geisha_id`).

Please note that the columns `stages` and `locations` are list-columns.

### Dataset `expression_xml`

Contrary to `expression_txt` that only lists the stages and the
locations when/where a gene is found expressed, in the object
`expression_xml` you can actually know the relationship between `stage`
and `location`, i.e., which stages associate with which locations.

``` r
expression_xml
#> # A tibble: 93,000 x 5
#>    ncbi_gene_id gene_name geisha_id               stage location         
#>    <chr>        <chr>     <chr>                   <chr> <chr>            
#>  1 373885       FZD10     Frizzled10.Chapman.2004 4     Primitive Streak 
#>  2 373885       FZD10     Frizzled10.Chapman.2004 5     Primitive Streak 
#>  3 373885       FZD10     Fz10.Chapman.2008       10    Neural Plate/Tube
#>  4 373885       FZD10     Fz10.Chapman.2008       10    Primitive Streak 
#>  5 373885       FZD10     Fz10.Chapman.2008       3     Primitive Streak 
#>  6 373885       FZD10     Fz10.Chapman.2008       3     Unlabeled        
#>  7 373885       FZD10     Fz10.Chapman.2008       4     Extraembryonic   
#>  8 373885       FZD10     Fz10.Chapman.2008       4     Germinal Crescent
#>  9 373885       FZD10     Fz10.Chapman.2008       4     Primitive Streak 
#> 10 373885       FZD10     Fz10.Chapman.2008       5     Area Pellucida   
#> # … with 92,990 more rows
```

## Data source

The original data source is obtained from the GEISHA
[Downloads](http://geisha.arizona.edu/geisha/downloads.jsp) page.

## Citing this work

Please visit the [About
GEISHA](http://geisha.arizona.edu/geisha/about.jsp) page for citation
details.
