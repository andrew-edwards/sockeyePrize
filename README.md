
<!-- README.md is generated from README.Rmd. Please edit that file. -->
<!-- which builds the .html that can be viewed locally (but isn't pushed to GitHub;
GitHub uses README.md to make the page you see on GitHub). See pacea if want to
save figures.
-->

# sizeSpectra2

<!-- badges: start -->

[![](https://img.shields.io/badge/lifecycle-under%20development-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#under%20development)
[![R-CMD-check](https://github.com/andrew-edwards/sockeyePrize/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/andrew-edwards/sockeyePrize/actions/workflows/R-CMD-check.yaml)
[![Codecov test
coverage](https://codecov.io/gh/andrew-edwards/sockeyePrize/branch/main/graph/badge.svg)](https://app.codecov.io/gh/andrew-edwards/sockeyePrize?branch=main)
![Visitors](https://api.visitorbadge.io/api/visitors?path=https%3A%2F%2Fgithub.com%2Fandrew-edwards%2FsockeyePrize&label=VISITORS&countColor=%23263759&style=flat&labelStyle=lower)
<!-- badges: end -->

An R package for entering the SalmonPrize competition

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
