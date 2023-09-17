
<!-- README.md is generated from README.Rmd. Please edit that file -->

# libminer

<!-- badges: start -->
<!-- badges: end -->

The goal of libminer is to provide utility functions for inspecting and
examining your local R package installations.

This is a R package developed as part of my workshop participation in
‘[Fundamentals of R Package
Development](https://posit-conf-2023.github.io/pkg-dev/)’ at the [Posit
Conference 2023](https://posit.co/conference/)! Credit for this package
and its code goes to [@ateucher](https://github.com/ateucher).

## Installation

You can install the development version of libminer from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("awesomecosmos/libminer")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(libminer)

lib_summary()
#>                                                                                         Library
#> 1                                /Library/Frameworks/R.framework/Versions/4.2/Resources/library
#> 2 /private/var/folders/mm/6lyr9rbs7vd53tnvwt0676zm0000gn/T/Rtmpt0b9cr/temp_libpath150646bd3ab6d
#>   n_packages
#> 1        171
#> 2          1

# can also calculate total file sizes
# lib_summary(sizes = TRUE)
```
