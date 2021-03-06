# massUni.R
# ::rtemis::
# 2016 Efstathios D. Gennatas egenn.github.io

#' Mass-univariate Analysis
#'
#' Run a mass-univariate analysis: same set of features on multiple outcomes
#'
#' @param x Matrix / data frame of features
#' @param y Matrix / data frame of outcomes
#' @param mod \pkg{rtemis} algorithm to use. Options: run \code{modSelect()}
#' @param verbose Logical: If TRUE, print messages during run
#' @param n.cores Integer: Number of cores to use
#' @param ... Arguments to be passed to \code{mod}
#' @author Efstathios D. Gennatas
#' @export

massUni <- function(x, y, mod = "gam",
                    save.mods = FALSE,
                    verbose = TRUE,
                    n.cores = rtCores, ...) {

  # [ INTRO ] ====
  start.time <- intro(verbose = verbose)

  # [ ARGUMENTS ] ====
  learner <- modSelect(mod)
  args <- list(...)

  # [ DATA ] ====
  if (is.null(colnames(x))) colnames(x) <- paste0("Feature_", seq(NCOL(x)))
  ynames <- colnames(y)

  # [ MOD1 ] ====
  mod1 <- function(index, x, y, learner, args) {
    y1 <- y[, index]
    mod.1 <- R.utils::doCall(learner, x = x, y = y1, print.plot = FALSE, args = args)
    return(mod.1)
  }

  # [ MODS ] ====
  if (verbose) msg("Training mass-univariate models")
  if (verbose) {
    pbapply::pboptions(type = "timer")
  } else {
    pbapply::pboptions(type = "none")
  }
  mods <- pbapply::pblapply(1:NCOL(y), mod1, x = x, y = y,
                            learner = learner, args = args,
                            cl = n.cores)

  # [ ERRORS ] ====
  if (verbose) msg("Collecting model errors")
  errors <- t(sapply(mods, function(m) as.data.frame(m$error.train)))
  rownames(errors) <- ynames
  # errors <- plyr::ldply(mods, function(m) as.data.frame(m$error.train), .progress = "text")
  # errors <- t(pbapply::pbsapply(mods, function(m) as.data.frame(m$error.train)))

  # [ OUTRO ] ====
  outro(start.time, verbose = verbose)
  if (!save.mods) mods <- NULL
  list(mods = mods,
       errors = errors)

} # rtemis::massUni
