#' RPM-PSSM feature vector
#' @description  In this feature The idea is similar to the probe concept used in microarray technologies, where probes are used to identify
#' genes. For the convenience, we call it residue probing method. In our application, each probe is an amino acid, which
#' corresponds to a particular column in the PSSM profiles. For each probe, we average the PSSM scores of all the amino acids
#' in the associated column with a PSSM value greater than zero in the sequence, which leads to a 1  20 feature vector. Once
#' again, for the 20 probes, the final feature for each protein sequence is a 1  400 vector.
#' @param pssm_name name of PSSM Matrix file
#' @import utils
#' @return RPM-PSSM feature vector of length 400
#' @references
#' Jeong, J.C., Lin, X. and Chen, X.W. (2011) On position-specific scoring matrix for protein function prediction
#' , IEEE/ACM transactions on computational biology and bioinformatics / IEEE, ACM, 8, 308-315.
#' @export
#' @examples
#' X<- RPM_PSSM(system.file("extdata","C7GRQ3.txt.pssm",package="PSSMCOOL"))
RPM_PSSM <- function(pssm_name){
  x<-read.delim(pssm_name,skip = 2,sep = "",header = FALSE)
  x<-x[-1,-c(1,23:44)]
  d<-which(x=="Lambda")
  if(length(d)!=0){
    x<-x[-c(d:dim(x)[1]),]
  }
  colnames(x)<-NULL
  rownames(x)<-NULL
  x<-as.matrix(x)
  k2<-x[,1]
  k2<-as.character(k2)
  p<-x[,-1]
  mode(p)<-"integer"
  M<-c()
  s<-matrix(0,20,20)
  v<-c("A","R","N","D","C","Q","E","G","H","I","L","K","M","F","P","S","T","W","Y","V")
  for(i in 1:20){
    for(j in 1:20){
      mn<-p[,j][k2==v[i]]
      mn<-mn[mn>=0]
      if(length(mn) ==0){
        mn<-0
      }
      s[i,j] <- round(mean(mn),digits = 3)
    }
    M<-c(M,s[,i])
  }
  return(M)
}
