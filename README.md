
<!-- README.md is generated from README.Rmd. Please edit that file. -->

<!-- which builds the .html that can be viewed locally (but isn't pushed to GitHub;
GitHub uses README.md to make the page you see on GitHub). See pacea if want to
gsave figures.
-->

# sockeyePrize

<!-- badges: start -->

[![](https://img.shields.io/badge/lifecycle-under%20development-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#under%20development)
[![R-CMD-check](https://github.com/andrew-edwards/sockeyePrize/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/andrew-edwards/sockeyePrize/actions/workflows/R-CMD-check.yaml)
<!--
[![Codecov test coverage](https://codecov.io/gh/andrew-edwards/sockeyePrize/branch/main/graph/badge.svg)](https://app.codecov.io/gh/andrew-edwards/sockeyePrize?branch=main)
[Visitors](https://api.visitorbadge.io/api/visitors?path=https%3A%2F%2Fgithub.com%2Fandrew-edwards%2FsockeyePrize&label=VISITORS&countColor=%23263759&style=flat&labelStyle=lower)
--> <!-- badges: end -->

An R package for entering the SalmonPrize competition

Andrew M. Edwards and Carrie A. Holt

The code was written for our analyses, is not currently intended to be
easily usable by others, and there are various improvements that we
would make. However, it does document all our analyses so they are fully
traceable.

Analyses are done by running R Markdown files in the reports/ folder for
each of the three river systems. See report/READMEpredictions.txt for
specific details.

# Methods – multiview embedding with environmental covariates

We used multiview embedding, a form of empirical dynamic modelling.
Rather than define mechanistic models, the approach translates time
series of data into a path through a multi-dimensional space, whose axes
are lagged values of the variables. We modelled each stock separately,
and included various relevant environmental covariates. These were
sea-surface temperature, Pink Salmon abundance in the North Pacific,
Fraser River discharge, zooplankton in the Strait of Georgia, the
Pacific Decadal Oscillation, and the North Pacific Current Bifurcation
index. Most of the covariates were taken from our pacea R package, and
analyses conducted using our pbsEDM R package.

References for background:

Edwards A.M, Rogers L.A., and Holt C.A. (2024). Explaining empirical
dynamic modelling using verbal, graphical and mathematical approaches.
Ecology and Evolution, 14:e10903, 1-12.
<https://doi.org/10.1002/ece3.10903>

Edwards A.M., Tai T.C., Watson J., Peña M.A., Hilborn A., Hannah C.G.,
Rooper C.N., Flynn K.L., and Oldford, G.L. (2024). pacea: An R package
of Pacific ecosystem information to help facilitate an ecosystem
approach to fisheries management. <https://github.com/pbs-assess/pacea>

Rogers L. A., and Edwards A. M. (2023). pbsEDM: An R package to
implement some of the methods of empirical dynamic modelling.
<https://github.com/pbs-assess/pbsEDM>.

Ye H., and Sugihara, G. (2016). Information leverage in interconnected
ecosystems: overcoming the curse of dimensionality. Science,
353:922-925. <https://doi.org/10.1126/science.aag0863>.

## 2026 Salmon Prize competition

### Data wrangling

Data are wrangled and saved in the package as follows:

data-raw/data-2026.Rmd - wrangling the data from salmon pri\`e people,
only Columbia so far.

data-raw/north-pacific-salmon.Rmd - at-sea North Pacific Salmon data
from Brendan Connors.

data-raw/covariates-2026/fraser-covariates-2026.Rmd - covariate data
from pacea and north-pacific-salmon.Rmd above, saves data object into
package, to then use for analysis.

### Analyses using EDM with our pbsEDM package

Only done for Columbia River so far, but this can be used as a template
for Stephanie, Bruno, Kaitlyn, and Jessie. And anyone else.

report-2026/columbia/bonneville/columbia-analysis.Rmd (for the other two
rivers in the other directory the river variable is just changed)

Analyses are a little brute force, we have not really had time to
further think about the ecosystem variables or settings, just happy to
get data wrangled and methods working. BUT, this should prove a useful
template for you to apply with more thought for your own analyses.

Columbia data is all we have at the moment for the salmon prize
competition, hence the focus on that stock. This code is tidied up from
last year’s.

See report/READMEpredictions.txt for details from 2025, though the
update code is far more understandable.

One great improvement would be to have a graphical representation of
which lagged variables get included in the top subsets in the multiview
embedding analyses (see columbia-analysis.pdf). We have more ideas also
to refine and improve these techniques, we just have not had time.

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
