require(ggplot2)
# install.packages(c("GGally","CCA"))
require(GGally)
require(CCA)
mm <- read.csv("http://www.ats.ucla.edu/stat/data/mmreg.csv")
colnames(mm) <- c("Control", "Concept", "Motivation", "Read", "Write", "Math", 
                  "Science", "Sex")
summary(mm)

xtabs(~Sex, data = mm)
psych <- mm[, 1:3]
acad <- mm[, 4:8]
names(mm[4:8])
ggpairs(psych)
matcor(psych, acad)
cc1 <- cc(psych, acad)

# display the canonical correlations
cc1$cor
cc1$ycoef

cc1$cor

cc1[3:4]

# compute canonical loadings
cc2 <- comput(psych, acad, cc1)

# display canonical loadings
cc2[3:6]

attributes(cc2)

# tests of canonical dimensions
ev <- (1 - cc1$cor^2)

n <- dim(psych)[1]
p <- length(psych)
q <- length(acad)
k <- min(p, q)
m <- n - 3/2 - (p + q)/2

w <- rev(cumprod(rev(ev)))

# initialize
d1 <- d2 <- f <- vector("numeric", k)

for (i in 1:k) {
  s <- sqrt((p^2 * q^2 - 4)/(p^2 + q^2 - 5))
  si <- 1/s
  d1[i] <- p * q
  d2[i] <- m * s - p * q/2 + 1
  r <- (1 - w[i]^si)/w[i]^si
  f[i] <- r * d2[i]/d1[i]
  p <- p - 1
  q <- q - 1
}

pv <- pf(f, d1, d2, lower.tail = FALSE)
(dmat <- cbind(WilksL = w, F = f, df1 = d1, df2 = d2, p = pv))



# standardized acad canonical coefficients diagonal matrix of acad sd's
s2 <- diag(sqrt(diag(cov(acad))))
s2 %*% cc1$ycoef

# 