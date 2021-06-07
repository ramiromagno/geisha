
<!-- README.md is generated from README.Rmd. Please edit that file -->

# geisha <img src='man/figures/logo.svg' align="right" height="139" />

<!-- badges: start -->
<!-- badges: end -->

*geisha* is an R data package that provides the expression dataset from
the Gallus Expression in Situ Hybridization Analysis
([GEISHA](http://geisha.arizona.edu/geisha/about.jsp)) project.

The data here provided is of June 2, 2021, 12:29 AM. You can check
whether this is the latest version by visiting
<http://geisha.arizona.edu/geisha/downloads.jsp>.

## Installation

You can install the current version of geisha with:

``` r
# install.packages("remotes")
remotes::install_github("ramiromagno/geisha")
```

## Usage

This package provides one single dataset: `geisha_expression`.

``` r
library(geisha)

geisha_expression
#> # A tibble: 2,857,048 x 8
#>    ncbi_gene_id ensembl_gene_id  gene_name stage tissue   geisha_id  birdbase_id
#>    <chr>        <chr>            <chr>     <fct> <chr>    <chr>      <chr>      
#>  1 100049058    ENSGALG00000027… DAG1      3     Blood V… DAG1.UApcr BB-GG2638  
#>  2 100049058    ENSGALG00000027… DAG1      3     Blood V… DAG1.Jave… BB-GG2638  
#>  3 100049058    ENSGALG00000027… DAG1      3     Early E… DAG1.UApcr BB-GG2638  
#>  4 100049058    ENSGALG00000027… DAG1      3     Early E… DAG1.Jave… BB-GG2638  
#>  5 100049058    ENSGALG00000027… DAG1      3     Early M… DAG1.UApcr BB-GG2638  
#>  6 100049058    ENSGALG00000027… DAG1      3     Early M… DAG1.Jave… BB-GG2638  
#>  7 100049058    ENSGALG00000027… DAG1      3     Ectoderm DAG1.UApcr BB-GG2638  
#>  8 100049058    ENSGALG00000027… DAG1      3     Ectoderm DAG1.Jave… BB-GG2638  
#>  9 100049058    ENSGALG00000027… DAG1      3     Epiblast DAG1.UApcr BB-GG2638  
#> 10 100049058    ENSGALG00000027… DAG1      3     Epiblast DAG1.Jave… BB-GG2638  
#> # … with 2,857,038 more rows, and 1 more variable: gene_ontology_id <chr>
```

Each row refers to a gene found to be expressed in the chick embryo at a
specific Hamilton-Hamburger stage (`stage`) and anatomical location
(`tissue`), obtained from a specific source (indicated by the
`geisha_id`).

Please note that the `stage` variable is a factor whose levels are: X,
XI, XII, XIII, XIV, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15,
16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33,
34, 35, 36, 37, 38, 39, 40, 41, 42, 43, and 44, following
[Hamilton-Hamburger stage
series](https://anatomypubs.onlinelibrary.wiley.com/doi/abs/10.1002/aja.1001950405)
of chick embryos.

## Data source

The original data source is obtained from the GEISHA
[Downloads](http://geisha.arizona.edu/geisha/downloads.jsp) page.

## Citing this work

Please visit the [About
GEISHA](http://geisha.arizona.edu/geisha/about.jsp) page for citation
details.
