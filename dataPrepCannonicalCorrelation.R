library("xts")
dataDir <-  file.path("C:","midquotedataOneMinute")
tickers <- unique(sapply(list.files(dataDir),function(x)substr(x,1,4)))

listFiles <- list.files(dataDir)
# take the first 5 files for each stock
listDataFrames <- lapply(tickers,function(ticker){
  do.call(rbind,lapply(listFiles[grep(ticker,listFiles)[1:5]],function(fpath)read.csv2(paste0(dataDir,"/",fpath),sep=",",dec=".")))
  })


lapply(tickers,function(ticker)listFiles[grep(ticker,listFiles)[1:5]])

tickers[1:3]


#sampleData <- do.call(rbind,lapply(listFiles[grep(tickers[1],listFiles)[1:3]],function(fpath)read.csv2(paste0(dataDir,"/",fpath),sep=",",dec=".")))

for (i in listDataFrames){
  i$time <- i[complete.cases(i),]
}
class(listDataFrames)

listDataFrames  <- lapply(listDataFrames,function(x){x[complete.cases(x),]
                                                     x$time <- strptime(as.character(x$X.Time),"%Y%m%d %H:%M:%OS")
                                                     x
                                                     })


sampleData$time <- strptime(as.character(sampleData$X.Time),"%Y%m%d %H:%M:%OS")

tsObjects <-lapply(listDataFrames,function(x) {split.xts(xts(x[,c("MidQuote","TradeSize")],order.by=x$time),f="days",k=1)})


tsObjects[[1]]

tsObjectsCleaned <-lapply(tsObjects,function(x) {lapply(x,function(y)align.time(y,60))})
tsObjectsCleaned[[2]][[1]]
names(tsObjectsCleaned) <- tickers


# stich everything on the first day 

plot(tsObjectsCleaned[[2]][[1]]$MidQuote)

library(functional)
mergeFill <- Curry(merge.xts,fill=na.locf)
merge.xts(fil)

dayOne <- do.call(mergeFill,lapply(tsObjectsCleaned,function(x){x[[1]]$MidQuote}))
names(dayOne) <- tickers
na.locf(dayOne,fromLast=T)
dayOneReturns <- apply(dayOne,MARGIN=2,sum)dayOneReturns <- apply(dayOne,MARGIN=2,function(x){c(0,diff(x))/x})
dayOneReturnsLog <- apply(dayOne,MARGIN=2,sum)dayOneReturns <- apply(dayOne,MARGIN=2,function(x){c(0,diff(x))/x})
dayOneReturnsLog <- apply(dayOne,MARGIN=2,sum)
dayOneReturns <- apply(dayOne,MARGIN=2,function(x){c(0,diff(log(x)))})

standartize <- function(x){if(length(which(is.na(x)))==0) (x-mean(x))/sd(x) else
  
  (x-mean(x,na.rm=T))/sd(x,na.rm=T)
}

length(diff(1:10))

dayOneCovMatrix <- cor(coredata(dayOneReturns))
dim(dayOneCovMatrix)
matplot(dayOneCovMatrix)


laggedCovarianceMatricsPositive <- lapply(1:20,
                                          function(x)na.fill(lag.xts(dayOneReturns,x),fill=0)                               
                                          )

nrow(coredata(dayOneReturns))
k <- 2
x1 <- rbind(matrix(rep(k*nrow(coredata(dayOneReturns))),ncol=ncol(coredata(dayOneReturns)),nrow=k),
            coredata(dayOneReturns)[(k+1):nrow(coredata(dayOneReturns)),]
            )


coredata(dayOneReturns)[3:nrow(coredata(dayOneReturns)),]


na.fill(lag.xts(dayOneReturns,1),fill=0)
lag.xts(dayOneReturns,1)
na.fill(lag.xts(dayOneReturns,1),fill=0)

laggedCovarianceMatricsPositive <- lapply(0:20,
                                          function(k){
                                            res <- rbind(matrix(0,ncol=ncol(coredata(dayOneReturns)),nrow=k),
                                                        coredata(dayOneReturns)[1:(nrow(coredata(dayOneReturns))-k),])
                                            res <- apply(res,MARGIN=2,standartize)
                                            res
                                          }
)
head(laggedCovarianceMatricsPositive[[1]],10)

head(laggedCovarianceMatricsPositive[[3]],10)


plsModel1Lag <- plsr(laggedCovarianceMatricsPositive[[1]] ~ laggedCovarianceMatricsPositive[[2]], ncomp = 6)
summary(plsModel1Lag)
plot(RMSEP(plsModel1Lag), legendpos = "topright")

plot(plsModel1Lag, ncomp = 2, asp = 1, line = TRUE)
plot(plsModel1Lag, plottype = "scores", comps = 1:3)$
explvar(plsModel1Lag)
plsModel1Lag$loadings
plsModel1Lag$coefficients


# PCA on one of the days- pretty useless the components are very s --------


pca1 <- princomp(laggedCovarianceMatricsPositive[[1]],scores=T,cor=TRUE)
summary(pca1)
plot(pca1)
biplot(pca1)
print(pca1$loadings)
# the component vector itself
pca1$loadings
# the transformed dataset i9s accessed with $scores
pca1$scores