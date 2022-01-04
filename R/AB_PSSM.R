#' AB-PSSM feature vector
#' @description to get This feature at first, each protein sequence is divided into
#'20 equal parts, each of which is called a block, and in each block the row vectors of the PSSM matrix related
#'to that block are added together and The resulting final vector is divided by the length of that block, which is
#'5% of the total length of the protein.
#'Finally, by placing these 20 vectors side by side, feature vector of length 400 is obtained.
#' @param pssm_name name of PSSM Matrix file
#' @import utils
#' @return AB-PSSM feature vector of length 400
#' @references
#' Jeong, J.C., Lin, X. and Chen, X.W. (2011) On position-specific scoring matrix for protein function prediction
#' , IEEE/ACM transactions on computational biology and bioinformatics / IEEE, ACM, 8, 308-315.
#' @export
#' @examples
#' X<- AB_PSSM(system.file("extdata","C7GRQ3.txt.pssm",package="PSSMCOOL"))
AB_PSSM <- function(pssm_name){
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
  s<-floor(L/20)
  sm<-rep(0,20)
  p<-0;n<-0
  f<-matrix(0,20,20)
  for(j in 1:20){
    for(t in 1:19){
      r1<-(1+(t-1)*s)
      r2<-(s+(t-1)*s)
      for(i in r1:r2){
        sm<-sm+m2[i,]
        if(m2[i,j]>0){
          p<-p+m2[i,j]
          n<-n+1
        }
      }
      p<-0;n<-0
      f[,t]<-sm/s
      sm<-rep(0,20)

    }
  }
  e<-(19*s+1)
  for(i in e:L){
    sm<-sm+m2[i,]
  }
  f[,20]<-sm/(L-19*s)

  v<-c()
  for(i in 1:20){
    v<-c(v,f[,i])
  }
  v<-round(v,digits = 4)
  return(v)
}
