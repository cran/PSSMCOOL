#' AATP_TPC feature vector
#' @description For getting this features which have been used to protein structural class prediction,
#'at first mean of every column in PSSM Matrix is computed to achieve a 20-dimensional vector
#'called AAC.then by combining it with other vector of length 400 called TPC, which is similar to \code{\link{dpc_pssm}}
#'AATP feature vector of length 420 is obtained.
#' @param pssm_name is name of PSSM Matrix file
#' @import utils
#' @return list of two feature vectors with 400 and 420 dimensions
#' @references
#' Zhang, S., Ye, F. and Yuan, X. (2012) Using principal component analysis and support vector machine to predict protein
#' structural class for low-similarity sequences via PSSM, Journal of Biomolecular Structure & Dynamics, 29, 634-642.
#' @seealso \code{\link{dpc_pssm}}
#' @export
#'
#' @examples
#' X<-AATP_TPC(paste0(system.file("extdata",package="PSSMCOOL"),"/C7GQS7.txt.pssm"))
AATP_TPC <- function(pssm_name){
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
  p<-x
  #p<-1/(1+exp(-p))
  L<-dim(p)[1]
  X<-apply(p,2,mean)
  names(X)<-NULL
  y<-matrix(0,20,20)
  TPC<-c()
  for(i in 1:20){
    kjey<-rep(0,20)
    for(j in 1:20){
      for(k in 1:(L-1)){
        kjey[j]<-kjey[j]+p[k,i]*p[k+1,j]
      }
    }
    for(j in 1:20){
      y[i,j]<-kjey[j]/sum(kjey)
      TPC<-c(TPC,y[i,j])
    }
  }
  AATP<-c(X,TPC)
  TPC <- round(TPC, digits = 4)
  AATP<-round(AATP,digits = 4)
  return(list(TPC, AATP))
}
