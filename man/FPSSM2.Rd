% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/FPSSM.R
\name{FPSSM2}
\alias{FPSSM2}
\title{Mixture of Two FPSSM Features}
\usage{
FPSSM2(pssm_name1, pssm_name2, hk)
}
\arguments{
\item{pssm_name1}{The name of first PSSM Matrix file}

\item{pssm_name2}{The name of second PSSM Matrix file}

\item{hk}{a parameter that indicates which amino acid alphabet must be used}
}
\value{
Feature vector of length 100
}
\description{
This function takes two PSSM files as argument and uses FPSSM function for making feature
vector of length 100 correspond to this pair of proteins.
}
\examples{
 s1<-system.file("extdata","C7GQS7.txt.pssm",package="PSSMCOOL")
 s2<-system.file("extdata","C7GRQ3.txt.pssm",package="PSSMCOOL")
 s<-FPSSM2(s1,s2,8)
}
\references{
Zahiri, J., et al. (2013) PPIevo: protein-protein interaction prediction from PSSM based
evolutionary information, Genomics, 102, 237-242.
}
\seealso{
\code{\link[entropy]{entropy}}

\code{\link[infotheo]{mutinformation}}
}
