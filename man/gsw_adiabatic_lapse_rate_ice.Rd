% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gsw.R
\name{gsw_adiabatic_lapse_rate_ice}
\alias{gsw_adiabatic_lapse_rate_ice}
\title{Adiabatic Lapse Rate of Ice}
\usage{
gsw_adiabatic_lapse_rate_ice(t, p)
}
\arguments{
\item{t}{in-situ temperature (ITS-90) [ degC ]}

\item{p}{sea pressure [dbar], i.e. absolute pressure [dbar] minus 10.1325 dbar}
}
\value{
adiabatic lapse rate (note unconventional unit) [ K/Pa ]
}
\description{
Note that the unit is K/Pa; multiply by 1e4 to get the more useful K/dbar.
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
t  <- c(-10.7856, -13.4329, -12.8103, -12.2600, -10.8863, -8.4036)
p <- c(       10,       50,      125,      250,      600,    1000)
lr <- gsw_adiabatic_lapse_rate_ice(t, p)
expect_equal(lr*1e7, c(0.218777853913651, 0.216559115188599, 0.216867659957613,
                     0.216988337914416, 0.217182707402780, 0.218100558740840))
}
\references{
\url{http://www.teos-10.org/pubs/gsw/html/gsw_adiabatic_lapse_rate_ice.html}
}
