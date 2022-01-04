#' Cross covarianse feature vector
#' @description The PSSM-CC variable measures the correlation of two different properties between two residues
#'separated by a distance of lg along the sequence.
#' @param pssm_name name of PSSM Matrix file
#' @param g shortest protein length in dataset minus one
#' @import utils
#' @return feature vector of length 3800
#' @references
#' Dong, Q., Zhou, S. and Guan, J. (2009) A new taxonomy-based protein fold recognition approach
#' based on autocross-covariance transformation, Bioinformatics, 25, 2655-2662.
#' @export
#' @examples
#' X<-pssm_cc(system.file("extdata","C7GQS7.txt.pssm",package="PSSMCOOL"))
pssm_cc <- function(pssm_name,g=10){ #g smaler than shortest protein length in database
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
  s<-x
  L<-dim(s)[1]
  sbar<-apply(s,2,mean)
  names(sbar)<-NULL
  sbar<-round(sbar,digits = 4)
  CC<-matrix(0,nrow = g,ncol = 380)

  for(pg in 0:(g-1)){
    lg <- L - pg -1
    for(pj_1 in 0:19){
      sum_j_1 <- 0
      for (i in 0:(L-1)) {
        sum_j_1 <- sum_j_1 + s[i+1,pj_1+1]
      }
      sum_j_1 <- sum_j_1 / L

      for(pj_2 in 0:19){
        if(pj_2 != pj_1){
          sum_j_2 <- 0
          for(i in 0:(L-1)){
            sum_j_2 <- sum_j_2 + s[i+1,pj_2+1]
          }
          sum_j_2 <- sum_j_2 / L
          pssm_acjg = 0
          for(i in 0:(lg-1)){
            pssm_acjg = pssm_acjg + (s[i+1,pj_1+1]-sum_j_1) * (s[i+pg+1,pj_2+1]-sum_j_2)
          }
          pssm_acjg = pssm_acjg / lg
          if(pj_1 < pj_2){
            CC[pg,19*pj_1+(pj_2 -1)] = pssm_acjg
          } else {
            CC[pg,19*pj_1+(pj_2)] = pssm_acjg
          }
        }
      }
    }

  }

  vec<-c()
  for(i in 1:g){
    vec<-c(vec,CC[i,])
  }
  vec<-round(vec,digits = 4)
  return(vec)
}
