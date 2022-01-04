#' DPC_PSSM feature vector
#' @description This Feature stands for dipeptide composition, to get this feature vector for both different
#' columns the elements in two consecutive rows corresponds to this columns, would be multiplied and this scenario
#' is done  for all L-1 consecutive rows (L is protein length) and finally summation of these numbers divides by
#' L-1. since the result depends on two different columns, eventually a Feature vector of length 400
#' will be obtained.
#' @param pssm_name name of PSSM Matrix file
#' @import utils
#'
#' @return feature vector of length 400
#'
#' @references
#' Liu, T., Zheng, X. and Wang, J. (2010) Prediction of protein structural class for
#' low-similarity sequences using support vector machine and PSI-BLAST profile, Biochimie, 92, 1330-1334.
#' @export
#'
#' @examples
#' X<-dpc_pssm(system.file("extdata", "C7GQS7.txt.pssm", package="PSSMCOOL"))
#'
dpc_pssm <- function(pssm_name){
  x<-read.delim(pssm_name,skip = 2,sep = "",header = FALSE)
  x<-x[-1,-c(1,23:44)]
  d<-which(x=="Lambda")
  if(length(d)!=0){
    x<-x[-c(d:dim(x)[1]),]
  }
  x<-x[,-1]
  colnames(x)<-NULL
  rownames(x)<-NULL
  x<-as.matrix(x)
  mode(x)<-"integer"
  m2<-x
  #m2<-1/(1+exp(-m2))
  L<-dim(m2)[1]
  y<-matrix(0,nrow = 20,ncol = 20)
  for (i in 1:20) {
    for (j in 1:20) {
      for (k in 1:(L-1)) {
        y[i,j]<-y[i,j]+m2[k,i]*m2[k+1,j]
      }
    }
  }
  y<-(1/(L-1))*y
  dipep<-c()
  for(i in 1:20){
    dipep<-c(dipep,y[i,])
  }
  dipep<-round(dipep,digits = 4)
  return(dipep)
}
