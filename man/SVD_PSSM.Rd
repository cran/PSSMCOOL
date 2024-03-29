% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/svd-pssm.R
\name{SVD_PSSM}
\alias{SVD_PSSM}
\title{Singular Value Decomposition (SVD)}
\usage{
SVD_PSSM(pssm_name)
}
\arguments{
\item{pssm_name}{name of PSSM Matrix file}
}
\value{
feature vector of length 20
}
\description{
Singular value decomposition is a general purpose matrix factorization approach
that has many useful applications in signal processing and statistics. In this function SVD is
applied to a matrix representation of a protein with the aim of reducing its dimensionality
Given an input matrix Mat with dimensions N*M SVD is used to calculate its factorization
of the form: \eqn{Mat=U\Sigma V,} where \eqn{\Sigma} is a diagonal matrix whose diagonal
entries are known as the singular values of Mat. The resulting descriptor is the ordered
set of singular values: \eqn{SVD\in\mathcal{R}^L,} where L=min(M,N).
and here \code{\link[base]{svd}} function is used for this purpose.
}
\examples{
X<-SVD_PSSM(system.file("extdata", "C7GQS7.txt.pssm", package="PSSMCOOL"))
}
\references{
L. Nanni, A. Lumini, and S. J. T. S. W. J. Brahnam, "An empirical study of different approaches for protein classification,"
vol. 2014, 2014.
}
