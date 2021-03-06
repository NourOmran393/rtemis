% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/x.SD2RES.R
\name{x.SD2RES}
\alias{x.SD2RES}
\title{Sparse CCA with Initialization By Resampling}
\usage{
x.SD2RES(
  x,
  z,
  x.test = NULL,
  z.test = NULL,
  k = 4,
  inmask = c(NA, NA),
  sparseness = c(0.01, 1),
  scale.first.x = FALSE,
  scale.first.center.x = FALSE,
  scale.first.z = FALSE,
  scale.first.center.z = FALSE,
  resampler = "strat.boot",
  n.res = 4,
  stratify.var = NULL,
  train.p = 0.75,
  strat.n.bins = 5,
  target.length = NROW(z),
  its = 20,
  cthresh = c(0, 0),
  perms = 0,
  uselong = 0,
  row.sparseness = 0,
  smooth = 0,
  robust = 0,
  mycoption = 1,
  initializationList = list(),
  initializationList2 = list(),
  l1 = 0.05,
  doseg = TRUE,
  priorWeight = 0,
  verbose = TRUE,
  outdir = NULL,
  save.mod = ifelse(!is.null(outdir), TRUE, FALSE)
)
}
\arguments{
\item{x}{Input matrix}

\item{z}{Input matrix}

\item{x.test}{(Optional) Testing set x matrix. Will be projected on vector solution}

\item{z.test}{(Optional) Testing set z matrix. Will be projected on vector solution}

\item{k}{Integer: Number of axes to project to (i.e. number of resulting dimensions you require)}

\item{sparseness}{Float, length 2: Required sparseness for each matrix.
Defaults to c(.01, 1)}

\item{scale.first.x}{Logical: If TRUE, scale \code{x} before decomposition}

\item{scale.first.center.x}{Logical: If TRUE, and \code{scale.first.x} is TRUE, also center \code{x}}

\item{scale.first.center.z}{Logical: See above}

\item{resampler}{Resampling method to use  (with \link{resample})#' @param}

\item{stratify.var}{Numeric vector (optional): Variable used for stratification. Defaults to \code{y}}

\item{train.p}{Float (0, 1): Fraction of cases to assign to traininig set for \code{resampler = "strat.sub"}}

\item{strat.n.bins}{Integer: Number of groups to use for stratification for
\code{resampler = "strat.sub" / "strat.boot"}}

\item{target.length}{Integer: Number of cases for training set for \code{resampler = "strat.boot"}.
Default = \code{length(y)}}

\item{its}{Integer: Number of iterations for ANTsR decomposition}

\item{cthresh}{Integer, pair: Cluster threshold for ANTsR decomposition. Used for voxerlwise data
Default = c(0, 0), which should be used for ROI data}

\item{perms}{Integer: Number of permutations for ANTsR decomposition}

\item{uselong}{Logical, binary: If 1, enforce solutions on each side to be the same. Default = 0.
See \code{ANTsR::sparseDecom2("uselong")}}

\item{row.sparseness}{Float (0, 1]: subject / case-space sparseness}

\item{smooth}{Float: Smooth the data (only if mask is provided). Default = 0}

\item{robust}{Logical, binary: If 1, Rank-transform input matrices. Default = 0}

\item{mycoption}{Integer {0, 1, 2}: Enforce 1. spatial orthogonality, 2. low-dimensional orthogonality or 0. both
Default = 1}

\item{initializationList}{List: Initialization for x. Default = list()}

\item{initializationList2}{List: Initialixzation for z. Default = list()}

\item{l1}{Float: L1 normalization. Default = .05}

\item{doseg}{Logical: If TRUE, orthogonalize matrix after each resample}

\item{verbose}{Logical: If TRUE, print messages to screen}

\item{scale.first}{z Logical: See above}
}
\description{
Run sparse CCA on a pair of matrices using \code{ANTsR}
}
\details{
This is based on \code{ANTsR::sparseDecom2boot} by Brian B. Avants
}
\seealso{
Other Cross-Decomposition: 
\code{\link{x.CCA}()},
\code{\link{xdecomSelect}()}
}
\author{
Efstathios D. Gennatas; original ANTsR code by Brian B. Avants
}
\concept{Cross-Decomposition}
