% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gsw.R
\name{gsw_t_freezing_first_derivatives_poly}
\alias{gsw_t_freezing_first_derivatives_poly}
\title{Derivatives of Freezing Water Properties (Polynomial version)}
\usage{
gsw_t_freezing_first_derivatives_poly(SA, p, saturation_fraction = 1)
}
\arguments{
\item{SA}{Absolute Salinity [ g/kg ]}

\item{p}{sea pressure [dbar], i.e. absolute pressure [dbar] minus 10.1325 dbar}

\item{saturation_fraction}{fraction of air in water [unitless]}
}
\value{
a list containing \code{tfreezing_SA} [ K/(g/kg) ], the derivative of freezing
temperature with Absolute Salinity and
\code{tfreezing_p} [ K/dbar ], the derivative with respect to pressure.
}
\description{
Derivatives of Freezing Water Properties (Polynomial version)
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


As of March 27, 2017, the test values listed in \dQuote{Examples} do not match
values provided at the TEOS-10 website listed in \dQuote{References},
but they match with values given by the Matlab code that is
provided on the TEOS-10 website. It is expected that the
TEOS-10 website will be updated by May 2017. As those updates to the TEOS-10
website become available, the present comment will be revised or deleted.
}

\examples{
SA <- c(               34.7118, 34.8915, 35.0256, 34.8472, 34.7366, 34.7324)
p <- c(                     10,      50,     125,     250,     600,    1000)
saturation_fraction <- c(    1,     0.8,     0.6,     0.5,     0.4,       0)
derivs <- gsw_t_freezing_first_derivatives_poly(SA, p, saturation_fraction)
expect_equal(derivs$tfreezing_SA, c(-0.056810211094078, -0.056855567524973, -0.056901968693345,
                                  -0.056903498206432, -0.056975157476629, -0.057083526206200))
expect_equal(derivs$tfreezing_p/1e-7, c(-0.748987354878138, -0.750288853857513, -0.752676389629787,
                                      -0.756549680608529, -0.767482625710990, -0.779985619685683))
}
\references{
\url{http://www.teos-10.org/pubs/gsw/html/gsw_t_freezing_first_derivatives.html}
}
\seealso{
Other functions with suspicious test values on the TEOS-10 website: \code{\link{gsw_entropy_second_derivatives}},
  \code{\link{gsw_rho_second_derivatives_wrt_enthalpy}},
  \code{\link{gsw_specvol_second_derivatives_wrt_enthalpy}}
}
\concept{functions with suspicious test values on the TEOS-10 website}
