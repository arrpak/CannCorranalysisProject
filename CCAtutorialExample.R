pop <- LifeCycleSavings[, 2:3]
oec <- LifeCycleSavings[, -(2:3)]
cancor(pop, oec)

x <- matrix(rnorm(150), 50, 3)
y <- matrix(rnorm(250), 50, 5)
(cxy <- cancor(x, y))
all(abs(cor(x %*% cxy$xcoef,
            y %*% cxy$ycoef)[,1:3] - diag(cxy $ cor)) < 1e-15)
all(abs(cor(x %*% cxy$xcoef) - diag(3)) < 1e-15)
all(abs(cor(y %*% cxy$ycoef) - diag(5)) < 1e-15)

library("CCA")
data("nutrimouse")
ncol(X)
ncol(Y)

X <- as.matrix(nutrimouse$gene)
Y <- as.matrix(nutrimouse$lipid)
correl <- matcor(X,Y)
img.matcor(correl,type=2)
Xr <- as.matrix(nutrimouse$gene[, sample(1:120, size = 10)])
res.cc <- cc(Xr, Y)
barplot(res.cc$cor, xlab = "Dimension",
           ylab = "Canonical correlations", names.arg = 1:10, ylim = c(0,1))
summary(res.cc)
plt.cc(res.cc)
res.regul <- estim.regul(X, Y, plt = TRUE,
                            grid1 = seq(0.0001, 0.2, l=51),
                            grid2 = seq(0, 0.2, l=51))


contour(res.regul$grid1, res.regul$grid2, res.regul$mat, add = TRUE,
levels = c(0,0.5,0.7), col = "blue")
contour(res.regul$grid1, res.regul$grid2, res.regul$mat, add = TRUE,
levels = c(0.8,0.85,0.88), col = "darkgreen")
res.rcc <- rcc(X, Y, 0.008096, 0.064)
barplot(res.rcc$cor, xlab = "Dimension",
ylab = "Canonical correlations", names.arg = 1:21, ylim = c(0,1))
plt.cc(res.rcc, var.label = TRUE,
ind.names = paste(nutrimouse$genotype, nutrimouse$diet, sep = "-"))
