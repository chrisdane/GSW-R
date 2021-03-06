% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gsw.R
\name{gsw_SAAR}
\alias{gsw_SAAR}
\title{Absolute Salinity Anomaly Ratio}
\usage{
gsw_SAAR(p, longitude, latitude)
}
\arguments{
\item{p}{sea pressure [dbar], i.e. absolute pressure [dbar] minus 10.1325 dbar}

\item{longitude}{longitude in decimal degrees, positive to the east of Greenwich. (This
is called \code{long} in the TEOS-10 Matlab code.)}

\item{latitude}{latitude in decimal degrees, positive to the north of the equator. (This
is called \code{lat} in the TEOS-10 Matlab code.)}
}
\value{
a list containing \code{SAAR}, which is
the (unitless) Absolute Salinity Anomality Ratio, and \code{in_ocean}
is set to 1 if \code{SAAR} is nonzero, or to 0 otherwise.
}
\description{
Absolute Salinity Anomaly Ratio
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
\section{Bugs}{

The definition of \code{in_ocean} is incorrect, because the C function named
\code{gsw_saar}, which is called by the present R function, does not calculate
\code{in_ocean}, as the base Matlab function named \code{gsw_SAAR} does. However,
examination of the Matlab code shows that \code{in_ocean} is set to 0 along
with \code{SAAR}, whenever the original estimate of the latter is nonfinite.
Thus, points that would be siganlled as being on the land by the Matlab code
are indicated in the same way with the present R function. However, other points
may also be indicated as being on land, if \code{SAAR} is simply zero in the
first calculation. Whether this poses a problem in practice is an open question,
since it seems likely that this function would only be called with oceanic
locations, anyway. If problems arise for users, a patch can be written to
improve things.
}

\examples{
p <- c(10, 50, 125, 250, 600, 1000)
longitude <- c(188, 188, 188, 188, 188, 188)
latitude <- c(4, 4, 4, 4, 4, 4)
SAAR <- gsw_SAAR(p, longitude, latitude)
expect_equal(1e3*SAAR$SAAR, c(0.004794295602143, 0.007668755837570, 0.018919828449091,
                              0.077293264028981, 0.161974583039298, 0.270652408428964))
expect_equal(SAAR$in_ocean, rep(1, 6))
}
\references{
\url{http://www.teos-10.org/pubs/gsw/html/gsw_saar.html}
}
