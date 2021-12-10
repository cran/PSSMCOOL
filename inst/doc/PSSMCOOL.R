## ----vali,echo=FALSE,fig.cap="Figure 1: List of implemented features in PSSMCOOL package",out.width = '70%'----
knitr::include_graphics("figures/feature_table.jpg")

## -----------------------------------------------------------------------------
library(PSSMCOOL)

## ----pssm-ac,echo=FALSE,fig.cap="Figure 2: process of extracting PSSM-AC feature vector from PSSM",out.width = '70%'----
knitr::include_graphics("figures/pssm_ac.jpg")

## -----------------------------------------------------------------------------
 w<-PSSMAC(system.file("extdata", "C7GQS7.txt.pssm", package="PSSMCOOL"))
 head(w, n = 50)

## ----dpc-pssm,echo=FALSE,fig.cap="Figure 3: process of extracting DPC-PSSM feature vector from PSSM",out.width = '70%'----
knitr::include_graphics("figures/dpc-pssm.jpg")

## -----------------------------------------------------------------------------
 ss<-DPC_PSSM(system.file("extdata", "C7GQS7.txt.pssm", package="PSSMCOOL"))
head(ss, n = 50)

## ----trigram,echo=FALSE,fig.cap="Figure 4: process of extracting trigram-PSSM feature vector from PSSM",out.width = '70%'----
knitr::include_graphics("figures/trigram.jpg")

## -----------------------------------------------------------------------------
as<-trigrame_pssm(paste0(system.file("extdata",package="PSSMCOOL"),"/C7GSI6.txt.pssm"))
head(as, n = 50)

## ----pse-pssm,echo=FALSE,fig.cap="Figure 5: process of extracting Pse-PSSM feature vector from PSSM",out.width = '70%'----
knitr::include_graphics("figures/pse-pssm.jpg")

## -----------------------------------------------------------------------------
 v<-pse_pssm(system.file("extdata", "C7GQS7.txt.pssm", package="PSSMCOOL"))
head(v, n = 50)

## ----k-separated,echo=FALSE,fig.cap="Figure 6: process of extracting K-separated-bigam-PSSM feature vector from PSSM",out.width = '70%'----
knitr::include_graphics("figures/k-separated.jpg")

## -----------------------------------------------------------------------------
 w<-k_seperated_bigrame(system.file("extdata", "C7GQS7.txt.pssm", package="PSSMCOOL"),5)
head(w, n = 50)

## ----eedp,echo=FALSE,fig.cap="Figure 7: process of extracting EDP-EEDP-MEDP feature vectors from PSSM",out.width = '70%'----
knitr::include_graphics("figures/EEDP.jpg")

## -----------------------------------------------------------------------------
 as<-EDP_MEDP(paste0(system.file("extdata",package="PSSMCOOL"),"/C7GS61.txt.pssm"))
head(as, n = 50)

## ----ab-pssm,echo=FALSE,fig.cap="Figure 8: process of extracting AB-PSSM feature vectors from PSSM",out.width = '70%'----
knitr::include_graphics("figures/AB-PSSM.jpg")

## -----------------------------------------------------------------------------
  zz<- AB_PSSM(system.file("extdata","C7GRQ3.txt.pssm",package="PSSMCOOL"))
head(zz[1], n = 50)

## -----------------------------------------------------------------------------
 as<-AATP_TPCC(paste0(system.file("extdata",package="PSSMCOOL"),"/C7GQS7.txt.pssm"))
head(as, n = 50)

## -----------------------------------------------------------------------------
 A<-CS_PSe_PSSM(system.file("extdata", "C7GSI6.txt.pssm", package="PSSMCOOL"),"total")
head(A, n = 50)

## ----fpssm,echo=FALSE,fig.cap="Figure 9: process of making FPSSM and extracting corresponding feature vectors",out.width = '70%'----
knitr::include_graphics("figures/s-fpssm.jpg")

## -----------------------------------------------------------------------------
 q<-FPSSM(system.file("extdata","C7GQS7.txt.pssm",package="PSSMCOOL"),20)
head(q, n = 50)

## ----scsh2,echo=FALSE,fig.cap="Figure 10: process of extracting scsh2 feature vector",out.width = '70%'----
knitr::include_graphics("figures/SCSH2.jpg")

## ----scshtable,echo=FALSE,fig.cap="Figure 11: tables of all 2-mers and all 3-mers",out.width = '70%'----
knitr::include_graphics("figures/scshtable.jpg")

## -----------------------------------------------------------------------------
 zz<- scsh2(system.file("extdata","C7GRQ3.txt.pssm",package="PSSMCOOL"),2)
head(zz, n = 200)

## -----------------------------------------------------------------------------
 w<-rpssm(system.file("extdata", "C7GQS7.txt.pssm", package="PSSMCOOL"))
head(w, n = 50)

## ----ccpssm,echo=FALSE,fig.cap="Figure 12: process of extracting CC-PSSM feature vector",out.width = '70%'----
knitr::include_graphics("figures/cc-pssm.jpg")

## -----------------------------------------------------------------------------
 aa<-pssm_cc(system.file("extdata","C7GQS7.txt.pssm",package="PSSMCOOL"),18)
head(aa, n = 50)

## -----------------------------------------------------------------------------
 as<-Discrete_Cosine_Transform(system.file("extdata", "C7GQS7.txt.pssm", package="PSSMCOOL"))
head(as, n = 50)

## ----dwt,echo=FALSE,fig.cap="Figure 13: Schematic diagram of a DWT with 4 levels",out.width = '70%'----
knitr::include_graphics("figures/dwt.jpg")

## -----------------------------------------------------------------------------
 as<-dwt_PSSM(system.file("extdata", "C7GQS7.txt.pssm", package="PSSMCOOL"))
head(as, n = 50)

## ----disulfid,echo=FALSE,fig.cap="Figure 14: The process of extracting disulfide-PSSM feature from the PSSM",out.width = '70%'----
knitr::include_graphics("figures/disulfid.jpg")

## -----------------------------------------------------------------------------
  aq<-disulfid(system.file("extdata", "C7GQS7.txt.pssm", package="PSSMCOOL"))
head(aq[,1:50])

## -----------------------------------------------------------------------------
 ss<-DP_PSSM(system.file("extdata", "C7GQS7.txt.pssm", package="PSSMCOOL"))
head(ss, n = 50)

## -----------------------------------------------------------------------------
  as<-DFMCA_PSSM(system.file("extdata", "C7GQS7.txt.pssm", package="PSSMCOOL"),7)
head(as, n = 50)

## -----------------------------------------------------------------------------
 as<-grey_pssm_pseAAC(system.file("extdata", "C7GQS7.txt.pssm", package="PSSMCOOL"))
head(as, n = 50)

## ----smooth,echo=FALSE,fig.cap="Figure 15: process of smoothed-PSSM generation, (A) represents the PSSM and (B) represents the smoothed-PSSM",out.width = '70%'----
knitr::include_graphics("figures/smoothed.jpg")

## -----------------------------------------------------------------------------
 w<-smoothed_PSSM(system.file("extdata", "C7GQS7.txt.pssm", package="PSSMCOOL"),7,11,c(2,3,8,9))
head(w[,1:50], n = 50)

## -----------------------------------------------------------------------------
  w<-kiderafactor(system.file("extdata", "C7GQS7.txt.pssm", package="PSSMCOOL"),c(2,3,8,9))
head(w[,1:50], n = 50)

## -----------------------------------------------------------------------------
 w<-MBMGACPSSM(system.file("extdata", "C7GQS7.txt.pssm", package="PSSMCOOL"))
head(w, n = 50)

## -----------------------------------------------------------------------------
 w<-LPC_PSSM(system.file("extdata", "C7GQS7.txt.pssm", package="PSSMCOOL"))
head(w, n = 50)

## ----pssm400,echo=FALSE,fig.cap="Figure 16: process of extracting PSSM400 feature vector, which for amino acid S, represents the corresponding rows in PSSM",out.width = '70%'----
knitr::include_graphics("figures/pssm400.jpg")

## -----------------------------------------------------------------------------
 q<-pssm400(system.file("extdata","C7GQS7.txt.pssm",package="PSSMCOOL"))
head(q, n = 50)

## -----------------------------------------------------------------------------
 as<-PSSMBLOCK(system.file("extdata", "C7GQS7.txt.pssm", package="PSSMCOOL"),5)
head(as, n = 50)

## ----pssmsd,echo=FALSE,fig.cap="Figure 17: process of extracting PSSM-SD feature vector values for column j",out.width = '70%'----
knitr::include_graphics("figures/pssmsd.jpg")

## -----------------------------------------------------------------------------
 ww<-PSSM_SD(system.file("extdata", "C7GQS7.txt.pssm", package="PSSMCOOL"))
head(ww, n = 50)

## -----------------------------------------------------------------------------
 q<-pssm_seg(system.file("extdata", "C7GQS7.txt.pssm", package="PSSMCOOL"),3)
head(q, n = 50)

## -----------------------------------------------------------------------------
 w<-SOMA_PSSM(system.file("extdata", "C7GQS7.txt.pssm", package="PSSMCOOL"))
head(w, n = 50)

## -----------------------------------------------------------------------------
 w<-SVD_PSSM(system.file("extdata", "C7GQS7.txt.pssm", package="PSSMCOOL"))
head(w, n = 20)

## ----eval=FALSE---------------------------------------------------------------
#  # install.packages("PSSMCOOL")
#  # library(PSSMCOOL)

## ----eval=FALSE---------------------------------------------------------------
#  current_directory <- "/home/PSSMCOOL/" # Please provide your desired directory.
#  setwd(current_directory)

## ----eval=FALSE---------------------------------------------------------------
#  pssm_url <- 'https://github.com/BioCool-Lab/PSSMCOOL/raw/main/classification-code-data/all_needed_pssms90.zip'
#  download.file(pssm_url, './all_needed_pssm90.zip', method = 'auto', quiet = FALSE)
#  unzip('all_needed_pssm90.zip', exdir = 'all_needed_pssm90')
#  PSSM_directory <- 'all_needed_pssm90/all_needed_pssms90/'

## ----eval=FALSE---------------------------------------------------------------
#  url <- "https://raw.githubusercontent.com/BioCool-Lab/PSSMCOOL/main/classification-code-data/positive.csv"
#  download.file(url, './PositiveData.csv')
#  positive_data <- read.csv("./PositiveData.csv", header = TRUE)

## ----eval=FALSE---------------------------------------------------------------
#  url <- "https://raw.githubusercontent.com/BioCool-Lab/PSSMCOOL/main/classification-code-data/negative.csv"
#  download.file(url, './NegativeData.csv')
#  negative_data <- read.csv("./NegativeData.csv", header = TRUE)

## ----eval=FALSE---------------------------------------------------------------
#  positiveFeatures<- c()
#  for(i in 1:dim(positive_data)[1]) {
#    ff<-FPSSM2(paste0(PSSM_directory, positive_data[i,1],'.fasta.pssm'),
#               paste0(PSSM_directory, positive_data[i,2],'.fasta.pssm'), 20)
#    positiveFeatures<-rbind(positiveFeatures, ff)
#  }

## ----eval=FALSE---------------------------------------------------------------
#  positiveFirstColumn <- c()
#  for(i in 1:dim(positive_data)[1]) {
#    dd <- paste(positive_data[i,1], '-' ,positive_data[i,2])
#    positiveFirstColumn <- rbind(positiveFirstColumn, dd)
#  }

## ----eval=FALSE---------------------------------------------------------------
#  pos_class <- rep("Interaction", dim(positiveFeatures)[1])
#  positiveFeatures2 <- cbind(positiveFirstColumn, positiveFeatures, pos_class)

## ----eval=FALSE---------------------------------------------------------------
#  negativeFeatures <- c()
#  for(i in 1:dim(negative_data)[1]) {
#    ff2<-FPSSM2(paste0(PSSM_directory, negative_data[i,1],'.fasta.pssm'),
#                paste0(PSSM_directory, negative_data[i,2],'.fasta.pssm'), 20)
#    negativeFeatures<-rbind(negativeFeatures, ff2)
#  }

## ----eval=FALSE---------------------------------------------------------------
#  negativeFirstColumn <- c()
#  for(i in 1:dim(negative_data)[1]) {
#    dd2 <- paste(negative_data[i,1], '-' ,negative_data[i,2])
#    negativeFirstColumn <- rbind(negativeFirstColumn, dd2)
#  }

## ----eval=FALSE---------------------------------------------------------------
#  neg_class <- rep("Non.Interaction", dim(negativeFeatures)[1])
#  negativeFeatures2 <- cbind(negativeFirstColumn, negativeFeatures, neg_class)

## ----eval=FALSE---------------------------------------------------------------
#  mainDataSet <- rbind(positiveFeatures2, negativeFeatures2)

## ----eval=FALSE---------------------------------------------------------------
#  install.packages('caret', dependencies = TRUE)
#  library(caret)
#  bmp.R2.submission.data.df <- as.data.frame(mainDataSet)
#  colnames(bmp.R2.submission.data.df)[1] <- "interactions"
#  dim(bmp.R2.submission.data.df)#1730  102

## ----eval=FALSE---------------------------------------------------------------
#  rownames(bmp.R2.submission.data.df) <- bmp.R2.submission.data.df$interactions

## ----eval=FALSE---------------------------------------------------------------
#  bmp.R2.submission.data.df <-bmp.R2.submission.data.df[,-1]
#  View(bmp.R2.submission.data.df)
#  colnames(bmp.R2.submission.data.df) <- c(paste0('Frt', 1: dim(positiveFeatures)[2]), 'Class')
#  dim(bmp.R2.submission.data.df)#1730  101
#  table(bmp.R2.submission.data.df$Class)

## ----eval=FALSE---------------------------------------------------------------
#  bmp.R2.submission.data.df$Class <-
#    as.factor(bmp.R2.submission.data.df$Class)
#  write.csv(bmp.R2.submission.data.df, 'DataSet.csv')

## ----eval=FALSE---------------------------------------------------------------
#  bmp.R2.submission.data.df <- read.csv("DataSet.csv")
#  setting.the.trainControl.3 <- function()
#  {
#    #setting the trainControl function parameter: repeated CV; downsampling;
#    set.seed(100)
#    fitControl <- trainControl(## 10-fold CV
#      method = "cv",
#      returnData = TRUE,
#      classProbs = TRUE,
#    )
#    return(fitControl)
#  }

## ----eval=FALSE---------------------------------------------------------------
#  trainControl.for.PSSM <- setting.the.trainControl.3()

## ----eval=FALSE---------------------------------------------------------------
#  cross.validation.bulit.model.treebag <-
#    train(Class ~ ., data = bmp.R2.submission.data.df,
#          method = "treebag",
#          trControl = trainControl.for.PSSM,
#          verbose = FALSE)
#  print(cross.validation.bulit.model.treebag$results)

## ----eval=FALSE---------------------------------------------------------------
#  cross.validation.bulit.model.C5.0Tree <-
#    train(Class ~ ., data = bmp.R2.submission.data.df,
#          method = "C5.0Tree",
#          trControl = trainControl.for.PSSM,
#          verbose = FALSE)
#  print(cross.validation.bulit.model.C5.0Tree$results)

## ----sessionInfo,echo=FALSE,out.width = '70%'---------------------------------
knitr::include_graphics("figures/sessionInfo.PNG")

