
<!-- README.md is generated from README.Rmd. Please edit that file. -->
<!-- which builds the .html that can be viewed locally (but isn't pushed to GitHub;
GitHub uses README.md to make the page you see on GitHub). See pacea if want to
save figures.
-->

# sockeyePrize

<!-- badges: start -->

[![](https://img.shields.io/badge/lifecycle-under%20development-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#under%20development)
[![R-CMD-check](https://github.com/andrew-edwards/sockeyePrize/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/andrew-edwards/sockeyePrize/actions/workflows/R-CMD-check.yaml)
[![Codecov test
coverage](https://codecov.io/gh/andrew-edwards/sockeyePrize/branch/main/graph/badge.svg)](https://app.codecov.io/gh/andrew-edwards/sockeyePrize?branch=main)
![Visitors](https://api.visitorbadge.io/api/visitors?path=https%3A%2F%2Fgithub.com%2Fandrew-edwards%2FsockeyePrize&label=VISITORS&countColor=%23263759&style=flat&labelStyle=lower)
<!-- badges: end -->

An R package for entering the SalmonPrize competition

# Data objects

Currently just has the provided data wrangled into tibbles that are
saved as data objects in this package. So can do:

``` r
at_sea_all
#> # A tibble: 1,020 × 22
#>    System      River   MarineEntryYear AgeClass_0.1 AgeClass_0.2 AgeClass_0.3
#>    <fct>       <fct>             <int>        <dbl>        <dbl>        <dbl>
#>  1 Bristol Bay Alagnak            1956           NA    NA           NA       
#>  2 Bristol Bay Alagnak            1957           NA    NA           NA       
#>  3 Bristol Bay Alagnak            1958           NA    NA           NA       
#>  4 Bristol Bay Alagnak            1959           NA    NA           NA       
#>  5 Bristol Bay Alagnak            1960           NA    NA            0       
#>  6 Bristol Bay Alagnak            1961           NA     0            0       
#>  7 Bristol Bay Alagnak            1962            0     0.000140     7.27e+ 2
#>  8 Bristol Bay Alagnak            1963            0     0            1.83e- 9
#>  9 Bristol Bay Alagnak            1964            0     0            1.07e- 9
#> 10 Bristol Bay Alagnak            1965            0     0            8.09e-10
#> # ℹ 1,010 more rows
#> # ℹ 16 more variables: AgeClass_0.4 <dbl>, AgeClass_0.5 <dbl>,
#> #   AgeClass_1.1 <dbl>, AgeClass_1.2 <dbl>, AgeClass_1.3 <dbl>,
#> #   AgeClass_1.4 <dbl>, AgeClass_1.5 <dbl>, AgeClass_2.1 <dbl>,
#> #   AgeClass_2.2 <dbl>, AgeClass_2.3 <dbl>, AgeClass_2.4 <dbl>,
#> #   AgeClass_3.1 <dbl>, AgeClass_3.2 <dbl>, AgeClass_3.3 <dbl>,
#> #   AgeClass_3.4 <dbl>, Juveniles_Marine_Entry <dbl>
brood_all
#> # A tibble: 978 × 22
#>    System  River BroodYear Total_Recruits AgeClass_0.1 AgeClass_0.2 AgeClass_0.3
#>    <fct>   <fct>     <int>          <dbl>        <dbl>        <dbl>        <dbl>
#>  1 Bristo… Alag…      1955            NA            NA    NA           NA       
#>  2 Bristo… Alag…      1956            NA            NA    NA           NA       
#>  3 Bristo… Alag…      1957            NA            NA    NA           NA       
#>  4 Bristo… Alag…      1958            NA            NA    NA           NA       
#>  5 Bristo… Alag…      1959            NA            NA    NA            0       
#>  6 Bristo… Alag…      1960            NA            NA     0            0       
#>  7 Bristo… Alag…      1961            NA             0     0.000140     7.27e+ 2
#>  8 Bristo… Alag…      1962            NA             0     0            1.83e- 9
#>  9 Bristo… Alag…      1963        414873.            0     0            1.07e- 9
#> 10 Bristo… Alag…      1964        381900.            0     0            8.09e-10
#> # ℹ 968 more rows
#> # ℹ 15 more variables: AgeClass_0.4 <dbl>, AgeClass_0.5 <dbl>,
#> #   AgeClass_1.1 <dbl>, AgeClass_1.2 <dbl>, AgeClass_1.3 <dbl>,
#> #   AgeClass_1.4 <dbl>, AgeClass_1.5 <dbl>, AgeClass_2.1 <dbl>,
#> #   AgeClass_2.2 <dbl>, AgeClass_2.3 <dbl>, AgeClass_2.4 <dbl>,
#> #   AgeClass_3.1 <dbl>, AgeClass_3.2 <dbl>, AgeClass_3.3 <dbl>,
#> #   AgeClass_3.4 <dbl>
returns_all
#> # A tibble: 906 × 22
#>    System  River ReturnYear Total_Returns AgeClass_0.1 AgeClass_0.2 AgeClass_0.3
#>    <fct>   <fct>      <int>         <dbl>        <dbl>        <dbl>        <dbl>
#>  1 Bristo… Alag…       1963       378138.            0      0           0       
#>  2 Bristo… Alag…       1964       759383.            0      1.40e-4     0       
#>  3 Bristo… Alag…       1965       397861.            0      0           7.27e+ 2
#>  4 Bristo… Alag…       1966       394077.            0      0           1.83e- 9
#>  5 Bristo… Alag…       1967       344306.            0      0           1.07e- 9
#>  6 Bristo… Alag…       1968       314034.            0      0           8.09e-10
#>  7 Bristo… Alag…       1969       324289.            0      2.16e-9     0       
#>  8 Bristo… Alag…       1970       500780.            0      0           4.55e- 9
#>  9 Bristo… Alag…       1971       537294.            0      4.11e+2     4.61e+ 2
#> 10 Bristo… Alag…       1972       302589.            0      0           6.49e-10
#> # ℹ 896 more rows
#> # ℹ 15 more variables: AgeClass_0.4 <dbl>, AgeClass_0.5 <dbl>,
#> #   AgeClass_1.1 <dbl>, AgeClass_1.2 <dbl>, AgeClass_1.3 <dbl>,
#> #   AgeClass_1.4 <dbl>, AgeClass_1.5 <dbl>, AgeClass_2.1 <dbl>,
#> #   AgeClass_2.2 <dbl>, AgeClass_2.3 <dbl>, AgeClass_2.4 <dbl>,
#> #   AgeClass_3.1 <dbl>, AgeClass_3.2 <dbl>, AgeClass_3.3 <dbl>,
#> #   AgeClass_3.4 <dbl>
```

## Installation

To install the latest version just:

    install.packages("remotes")    # If you do not already have the "remotes" package

    remotes::install_github("andrew-edwards/sockeyePrize")

If you get an error like

    Error in utils::download.file(....)

then the connection may be timing out (this happens to me on our work
network). Try

    options(timeout = 1200)

and then try and install again. If you get a different error then post
an Issue or contact
<a href="mailto:andrew.edwards@dfo-mpo.gc.ca">Andy</a> for help.
