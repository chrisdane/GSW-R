% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gsw.R
\name{gsw_t_from_pt0_ice}
\alias{gsw_t_from_pt0_ice}
\title{In situ Temperature from Potential Temperature at 0dbar}
\usage{
gsw_t_from_pt0_ice(pt0_ice, p)
}
\arguments{
\item{pt0_ice}{potential temperature of ice (ITS-90) [ degC ]}

\item{p}{sea pressure [dbar], i.e. absolute pressure [dbar] minus 10.1325 dbar}
}
\value{
in-situ temperature (ITS-90) [ degC ]
}
\description{
In situ Temperature from Potential Temperature at 0dbar
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
pt0_ice  <- c(-10.7856, -13.4329, -12.8103, -12.2600, -10.8863, -8.4036)
p <-  c(     10,      50,     125,     250,     600,    1000)
t <- gsw_t_from_pt0_ice(pt0_ice, p)
expect_equal(t, c(-10.783412084414074, -13.422068638139141, -12.783170223330448,
                -12.205667526492039, -10.755496924674144, -8.184121042593350))
}
\references{
\url{http://www.teos-10.org/pubs/gsw/html/gsw_t_from_pt0_ice.html}
}
