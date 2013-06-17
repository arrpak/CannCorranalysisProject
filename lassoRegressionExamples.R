install.packages("glmnet")
install.packages("lars")

library(lars)


data(diabetes)
attach(diabetes)
cv.lars(x2,y,trace=TRUE,max.steps=80)
detach(diabetes)

install.packages("ElemStatLearn")
library("ElemStatLearn")
data(prostate)
head(prostate)


if(interactive())par(ask=TRUE)
)
str( prostate )
cor( prostate[,1:8] )
require(lattice)
levelplot(cor(prostate[,1:8]))
pairs( prostate[,1:9], col="violet" )
train <- subset( prostate, train==TRUE )[,1:9]
test <- subset( prostate, train=FALSE )[,1:9]
#
if( require(leaps)
    ) {
  # The book (page 56) uses only train subset, so we the same:
  prostate.leaps <- regsubsets( lpsa ~ . , data=train, nbest=70, #modelselection by exhaustive search
                                really.big=TRUE )
  prostate.leaps.sum <- summary( prostate.leaps )
  prostate.models <- prostate.leaps.sum$which
  prostate.models.size <- as.numeric(attr(prostate.models, "dimnames")[[1]])
  hist( prostate.models.size )
  prostate.models.rss <- prostate.leaps.sum$rss
  prostate.models.best.rss <-
    tapply( prostate.models.rss, prostate.models.size, min )
  prostate.models.best.rss
  # Let us add results for the only intercept model
  prostate.dummy <- lm( lpsa ~ 1, data=train )
  prostate.models.best.rss <- c(
    sum(resid(prostate.dummy)^2),
    prostate.models.best.rss)
  # Making a plot:
  plot( 0:8, prostate.models.best.rss, ylim=c(0, 100),type="b", xlab="subset size", ylab="Residual Sum Square",
        col="red2" )
  points( prostate.models.size, prostate.models.rss, pch=17, col="brown",cex=0.7 )
}
# For a better plot, should remove the best for each size from last call!
# Now with ridge regression:
# Ridge regression in R is multiply implemented, at least:
# MASS: lm.ridge
# mda : gen.ridge
#( surviva    l: ridge)
# Design: pentrace
# mgcv: pcls (very general)
# simple.ridge (in this package)
#
install.packages("mda")
library(mda)
#pattern for doing ridge reg for multiple la
prostate.ridge.list <- lapply(list(lambda=seq(0,8,by=0.4)), function(lambda)
  gen.ridge(train[,1:8], y=train[,9,drop=FALSE], lambda=lambda))
# Problems with this usage.
# simpler usage:
#
prostate.ridge <- gen.ridge(train[,1:8], y=train[,9,drop=FALSE], lambda=1)
#
# Since there is some problems with the mda functions, we use our own:
#
prostate.ridge <- simple.ridge( train[,1:8], train[,9], df=1:8 )
#
# coefficient traces:
#
matplot( prostate.ridge$df, t(prostate.ridge$beta), type="b",
         col="blue", pch=17, ylab="coefficients" )
# Calculations for the lasso:
#
if(require(lasso2)) {
  prostate.lasso <- l1ce( lpsa ~ ., data=train, trace=TRUE, sweep.out=~1,
                          bound=seq(0,1,by=0.1) )
  prostate.lasso.coef <- sapply(prostate.lasso, function(x) x$coef)
  colnames(prostate.lasso.coef) <- seq( 0,1,by=0.1 )
  matplot( seq(0,1,by=0.1), t(prostate.lasso.coef[-1,]), type="b",
           xlab="shrinkage factor", ylab="coefficients",
           xlim=c(0, 1.2), col="blue", pch=17 )
}
#
# lasso with lars:

if (require(lars)) {
  #
  prostate.lasso.lars <- lars( as.matrix(train[,1:8]), train[,9],
                               type="lasso", trace=TRUE )
  cv.lars( as.matrix(train[,1:8]), train[,9],
           type="lasso", trace=TRUE, K=10 )
}
#
# CV (cross-validation) using package boot:

#
library(boot)
prostate.glm <- glm( lpsa ~ ., data=train )
# repeat this some times to make clear that cross-validation is
# a random procedure
#
cv.glm( train, prostate.glm, K=10 )$delta
#
# This is a two-component vector, raw cross-validated estimate and
# adjusted cross-validated estimate.
summary( prostate.glm )
#
        

prostate.lasso.glm <- gl1ce( lpsa ~ ., data=tra  in, trace=TRUE, sweep.out=~1,
                        bound=seq(0,1,by=0.1),family=binomial())
prostate.lasso.coefglm <- sapply(prostate.lasso, function(x) x$coef)
colnames(prostate.lasso.coefglm) <- seq( 0,1,by=0.1 )
matplot( seq(0,1,by=0.1), t(prostate.lasso.coefglm[-1,]), type="b",
         xlab="shrinkage factor", ylab="coefficients",
         xlim=c(0, 1.2), col="blue", pch=17 )

matplot( seq(0,1,by=0.1), t(prostate.lasso.coef[-1,]), type="b",
         xlab="shrinkage factor", ylab="coefficients",
         xlim=c(0, 1.2), col="blue", pch=17 )



glm.dfMI.Trunc.IS <- lm(I( Sign*sign(MIPer)* (abs(MIPer)/(Vol1D/sqrt(250)*(LifeMin/300)^0.5)/(0.5+plnorm(ADV5*AvgPrice,meanlog=medianLogADV5Princ,sdlog=stdevLogAD5Princ)) ) )~
                          #lm(I((MIPer*Sign)^0.35) ~
                          # I(InsideSpreadPer)
                          #+I(HighCrossedPerInd*InsideSpreadPer^0.2)
                          #+LowCrossedPerInd
                          I( (CrossedPer*SpreadBp/10000/(Vol1D/sqrt(250)*(LifeMin/300)^0.5) /(0.5+plnorm(ADV5*AvgPrice,meanlog=medianLogADV5Princ,sdlog=stdevLogAD5Princ)) ) )
                        #+I(log(AvgPrice))
                        #+I(log(ADV5*AvgPrice)/(Vol1D/sqrt(250)*(LifeMin/300)^0.5))
                        #+I(AvgFillNumLot)
                        #+ I(NumFills) 
                        #+I((Vol1D/sqrt(250)*(LifeMin/300)^0.5))
                        #+I(LifeMin^0.5)
                        # +I(LifeMin)
                        + I(Sign*IndexReturnLife/(Vol1D/sqrt(250)*(LifeMin/300)^0.5) / (0.5+plnorm(ADV5*AvgPrice,meanlog=medianLogADV5Princ,sdlog=stdevLogAD5Princ)))
                        # + I( sign(MIPer)/sqrt(3))
                        + I(Particip /(0.5+plnorm(ADV5*AvgPrice,meanlog=medianLogADV5Princ,sdlog=stdevLogAD5Princ)))
                        + I(sqrt(Particip /(0.5+plnorm(ADV5*AvgPrice,meanlog=medianLogADV5Princ,sdlog=stdevLogAD5Princ))))
                        
                        #+ I(CrossedPer) # *InsideSpreadPer)
                        #+InsideSpreadPerInd
                        -1, y=TRUE,data = dfMI.Trunc.IS,na.action=na.omit) #, family = gaussian(link = "identity"))
summary(glm.dfMI.Trunc.IS)
# the rsq is around 0.23o0.3 on the word doc, suggesting some data discreency, but still since the executed orders aren't the only thing in the market, it's still 
# tangible market impact effect
#if ( glm.dfMI.Trunc=="try-error")
#next;

#Diagnostic
print(summary(  glm.dfMI.Trunc.IS))
plot(glm.dfMI.Trunc.IS$residuals)

#outlier diagnostics
# Assessing Outliers
library("car")
outlierTest(glm.dfMI.Trunc.IS) # Bonferonni p-value for most extreme obs
qqPlot(glm.dfMI.Trunc.IS, main="QQ Plot") #qq plot for studentized resid 
leveragePlots(glm.dfMI.Trunc.IS) # leverage plots



# library("tseries")
#jarque.bera.test(glm.dfMI.Trunc.IS$residuals)
hist(glm.dfMI.Trunc.IS$residuals,breaks="FD")

plot(glm.dfMI.Trunc.IS$fitted.values,glm.dfMI.Trunc.IS$residuals)

plot(glm.dfMI.Trunc.IS$y,glm.dfMI.Trunc.IS$fitted.values)
plot(glm.dfMI.Trunc.IS)
acf( glm.dfMI.Trunc.IS$residuals)


milasso <- l1ce( I( Sign*sign(MIPer)* (abs(MIPer)/(Vol1D/sqrt(250)*(LifeMin/300)^0.5)/(0.5+plnorm(ADV5*AvgPrice,meanlog=medianLogADV5Princ,sdlog=stdevLogAD5Princ)) ) )~
                          #lm(I((MIPer*Sign)^0.35) ~
                          # I(InsideSpreadPer)
                          #+I(HighCrossedPerInd*InsideSpreadPer^0.2)
                          #+LowCrossedPerInd
                          I( (CrossedPer*SpreadBp/10000/(Vol1D/sqrt(250)*(LifeMin/300)^0.5) /(0.5+plnorm(ADV5*AvgPrice,meanlog=medianLogADV5Princ,sdlog=stdevLogAD5Princ)) ) )
                        #+I(log(AvgPrice))
                        #+I(log(ADV5*AvgPrice)/(Vol1D/sqrt(250)*(LifeMin/300)^0.5))
                        #+I(AvgFillNumLot)
                        #+ I(NumFills) 
                        #+I((Vol1D/sqrt(250)*(LifeMin/300)^0.5))
                        #+I(LifeMin^0.5)
                        # +I(LifeMin)
                        + I(Sign*IndexReturnLife/(Vol1D/sqrt(250)*(LifeMin/300)^0.5) / (0.5+plnorm(ADV5*AvgPrice,meanlog=medianLogADV5Princ,sdlog=stdevLogAD5Princ)))
                        # + I( sign(MIPer)/sqrt(3))
                        + I(Particip /(0.5+plnorm(ADV5*AvgPrice,meanlog=medianLogADV5Princ,sdlog=stdevLogAD5Princ)))
                        #+ I(CrossedPer) # *InsideSpreadPer)
                        #+InsideSpreadPerInd
                        -1, y=TRUE,data = dfMI.Trunc.IS,na.action=na.omit, trace=TRUE,
                        bound=seq(0,1,by=0.1),sweep.out=NULL )
milasso.coef <- sapply(milasso, function(x) x$coef)
colnames(milasso.coef) <- seq( 0,1,by=0.1 )
matplot( seq(0,1,by=0.1), t(milasso.coef[-1,]), type="b",
         xlab="shrinkage factor", ylab="coefficients",
         xlim=c(0, 1.2), col="blue", pch=17 )
matplot( milasso$, t(prostate.ridge$beta), type="b",
         col="blue", pch=17, ylab="coefficients" )
