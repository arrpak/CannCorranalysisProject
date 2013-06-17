install.packages("pls")
library("pls")
vignette(pls)
help("pls")
??plsr

#example of SVD
hilbert <- function(n) { i <- 1:n; 1 / outer(i - 1, i, "+") }
X <- hilbert(9)[, 1:6]#note X is not nxn
(s <- svd(X))
D <- diag(s$d)
s$u %*% D %*% t(s$v)-X #  X = U D V'
t(s$u) %*% X %*% s$v #  D = U' X V
eigen(X)#error-non square matrix

# to approximate X using only the first 3 left signular vectors, do like so(we ee the approximation is pretty good)
s$u[,1:3] %*% D[1:3,] %*% t(s$v)-X #  X = U D V'

s$u%*%D

t(s$v)[,1:3]

data("yarn")
data("oliveoil")
data("gasoline")
colnames(gasoline)
ncol(gasoline$NIR)

gasTrain <- gasoline[1:50, ]
gasTest <- gasoline[51:60, ]
gas1 <- plsr(octane ~ NIR, ncomp = 10, data = gasTrain, validation = "LOO")
summary(gas1)
plot(RMSEP(gas1), legendpos = "topright")

plot(gas1, ncomp = 2, asp = 1, line = TRUE)
plot(gas1, plottype = "scores", comps = 1:3)
explvar(gas1)
gas1$loadings
gas1$coefficients