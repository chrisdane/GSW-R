% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gsw.R
\name{gsw_specvol_second_derivatives_wrt_enthalpy}
\alias{gsw_specvol_second_derivatives_wrt_enthalpy}
\title{Second Derivatives of Specific Volume wrt Enthalpy}
\usage{
gsw_specvol_second_derivatives_wrt_enthalpy(SA, CT, p)
}
\arguments{
\item{SA}{Absolute Salinity [ g/kg ]}

\item{CT}{Conservative Temperature [ degC ]}

\item{p}{sea pressure [dbar], i.e. absolute pressure [dbar] minus 10.1325 dbar}
}
\value{
A list containing \code{specvol_SA_SA} [ (m^3/kg)/(g/kg)^2 ], the second derivative of
specific volume with respect to Absolute Salinity,
\code{specvol_SA_h} [ (m^3/kg)/(g/kg)/(J/kg) ], the derivative of
specific volume with respect to Absolute Salinity and enthalpy,
and \code{specvol_h_h} [ (m^3/kg)/(J/kg)^2 ], the second derivative of
specific volume with respect to enthalpy.
}
\description{
Second Derivatives of Specific Volume wrt Enthalpy
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
SA <- c(34.7118, 34.8915, 35.0256, 34.8472, 34.7366, 34.7324)
CT <- c(28.8099, 28.4392, 22.7862, 10.2262,  6.8272,  4.3236)
p <- c(      10,      50,     125,     250,     600,    1000)
r <- gsw_specvol_second_derivatives_wrt_enthalpy(SA, CT, p)
expect_equal(r$specvol_SA_SA/1e-8, c(0.080900028996264, 0.080937999675000, 0.084663065647101,
                                   0.096973364985384, 0.099727453432293, 0.101353037979356))
expect_equal(r$specvol_SA_h/1e-12, c(0.325437133570796, 0.327060462851431, 0.375273569184178,
                                   0.545188833073084, 0.589424881889351, 0.616101548209175))
expect_equal(r$specvol_h_h/1e-15, c(0.447949998681476, 0.449121446914278, 0.485998151346315,
                                  0.598480711660961, 0.628708349875318, 0.647433212216398))
}
\references{
\url{http://www.teos-10.org/pubs/gsw/html/gsw_specvol_second_derivatives_wrt_enthalpy.html}
}
\seealso{
Other functions with suspicious test values on the TEOS-10 website: \code{\link{gsw_entropy_second_derivatives}},
  \code{\link{gsw_rho_second_derivatives_wrt_enthalpy}},
  \code{\link{gsw_t_freezing_first_derivatives_poly}}
}
\concept{functions with suspicious test values on the TEOS-10 website}
