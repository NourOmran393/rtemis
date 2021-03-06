# crossdecomposition_tests.R
# ::rtemis::
# 2019 Efstathios D. Gennatas egenn.github.io

suppressWarnings(RNGversion("3.5.0"))
library(rtemis)
x <- rnormmat(400, 500, seed = 2019)
z <- rnormmat(400, 500, seed = 2020)

xdecomSelect()
if (requireNamespace("PMA", quietly = TRUE)) {
  xz.cca <- x.CCA(x, z, nperms = 5, permute.niter = 5, n.cores = 1)
}

if (requireNamespace("ANTsR", quietly = TRUE)) {
  xz.sd2res <- x.SD2RES(x, z, n.res = 10)
}
