% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/PSSM_COMPOSITION.R
\name{pssm_composition}
\alias{pssm_composition}
\title{PSSM-COMPOSITION feature}
\usage{
pssm_composition(pssm_name)
}
\arguments{
\item{pssm_name}{name of PSSM Matrix files}
}
\value{
feature vector of length 400
}
\description{
This feature, which stands for auto covariance transformation, for jth column calculates the average
of this column, and then subtracts the resulting number from the elements on the i and (i + g)th rows of this column,
and finally multiplies them. by changing the variable i from 1 to L-g, it calculates the sum of these, since the
variable j changes between 1 and 20, and the variable g between 1 and 20 eventually a feature vector of length 200
will be obtained.
}
\examples{
X<-pssm_composition(system.file("extdata", "C7GQS7.txt.pssm", package="PSSMCOOL"))
}
\references{
L. Zou, C. Nan, and F. J. B. Hu, "Accurate prediction of bacterial type IV secreted effectors using amino acid
composition and PSSM profiles," vol. 29, no. 24, pp. 3135-3142, 2013.
}
