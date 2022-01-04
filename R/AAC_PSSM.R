#' AAC-PSSM feature vectors
#' @description AAC-PSSM Feature stands for Amino Acid composition which is actually mean of PSSM Matrix
#' columns which its length is 20. combination of this feature vector and DPC-PSSM feature vector would be
#' AADP-PSSM feature vector.
#' @param pssm_name name of PSSM Matrix file
#' @import utils
#' @return feature vector of length 20
#' @references
#' Liu, T., Zheng, X. and Wang, J. (2010) Prediction of protein structural class for
#' low-similarity sequences using support vector machine and PSI-BLAST profile, Biochimie, 92, 1330-1334.
#' @export
#' @examples
#' X<-aac_pssm(system.file("extdata", "C7GQS7.txt.pssm", package="PSSMCOOL"))
aac_pssm <- function(pssm_name){
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
  AAC<-apply(m2,2,mean)
  names(AAC)<-NULL
  AAC<-round(AAC,digits = 4)
  return(AAC)
}
