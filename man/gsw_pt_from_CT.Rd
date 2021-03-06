% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gsw.R
\name{gsw_pt_from_CT}
\alias{gsw_pt_from_CT}
\title{Potential temperature from Conservative Temperature}
\usage{
gsw_pt_from_CT(SA, CT)
}
\arguments{
\item{SA}{Absolute Salinity [ g/kg ]}

\item{CT}{Conservative Temperature [ degC ]}
}
\value{
potential temperature [ degC ]
}
\description{
Potential temperature from Conservative Temperature
}
\details{
The present R function works with a wrapper to a C function contained
within the GSW-C system (Version 3.05-4 dated 2017-08-07, available at
\url{https://github.com/TEOS-10/GSW-C},
as git commit '5b4d959e54031f9e972f3e863f63e67fa4f5bfec'), which
stems from the GSW-Fortran system (\url{https://github.com/TEOS-10/GSW-Fortran})
which in turn stems from the GSW-Matlab system
(\url{https://github.com/TEOS-10/GSW-Matlab}).
Consult \url{http://www.teos-10.org} to learn more about
these software systems, their authorships, and the science behind
it all.
}
\examples{
SA <- c(34.7118, 34.8915, 35.0256, 34.8472, 34.7366, 34.7324)
CT <- c(28.8099, 28.4392, 22.7862, 10.2262,  6.8272,  4.3236)
pt <- gsw_pt_from_CT(SA, CT)
expect_equal(pt, c(28.783177048624573, 28.420955597191984, 22.784953468087107,
                   10.230534394434429, 6.829216587061605, 4.324534835990236))
}
\references{
\url{http://www.teos-10.org/pubs/gsw/html/gsw_pt_from_CT.html}
}
