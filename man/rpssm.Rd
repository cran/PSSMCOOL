% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/RPSSM.R
\name{rpssm}
\alias{rpssm}
\title{RPSSM feature}
\usage{
rpssm(pssm_name)
}
\arguments{
\item{pssm_name}{name of PSSM Matrix file}
}
\value{
feature vector of length 110
}
\description{
To obtain this feature, first the columns of the PSSM matrix are merged to obtain an L*10 matrix. Then,
with a relationship similar to the auto covariance transformation feature, this feature with a length of 110 is
obtained from this matrix.
}
\examples{
X<-rpssm(system.file("extdata", "C7GQS7.txt.pssm", package="PSSMCOOL"))
}
\references{
Ding, S., et al. (2014) A protein structural classes prediction method based on predicted secondary structure and
PSI-BLAST profile, Biochimie, 97, 60-65.
}
