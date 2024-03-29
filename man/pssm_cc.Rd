% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/PSSM_CC.R
\name{pssm_cc}
\alias{pssm_cc}
\title{Cross covarianse feature vector}
\usage{
pssm_cc(pssm_name, g = 10)
}
\arguments{
\item{pssm_name}{name of PSSM Matrix file}

\item{g}{shortest protein length in dataset minus one}
}
\value{
feature vector of length 3800
}
\description{
The PSSM-CC variable measures the correlation of two different properties between two residues
separated by a distance of lg along the sequence.
}
\examples{
X<-pssm_cc(system.file("extdata","C7GQS7.txt.pssm",package="PSSMCOOL"))
}
\references{
Dong, Q., Zhou, S. and Guan, J. (2009) A new taxonomy-based protein fold recognition approach
based on autocross-covariance transformation, Bioinformatics, 25, 2655-2662.
}
