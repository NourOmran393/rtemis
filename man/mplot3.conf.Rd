% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mplot3.conf.R
\name{mplot3.conf}
\alias{mplot3.conf}
\title{Plot confusion matrix}
\usage{
mplot3.conf(
  object,
  main = "auto",
  xlab = "Reference",
  ylab = "Estimated",
  plot.metrics = TRUE,
  mod.name = NULL,
  oma = c(0, 0, 0, 0),
  dim.main = 1,
  dim.lab = 1,
  dim.in = 4,
  dim.out = -1,
  font.in = 2,
  font.out = 1,
  cex.main = 1.8,
  cex.in = 1.8,
  cex.lab = 1.8,
  cex.lab2 = 1.8,
  cex.lab3 = 1.5,
  cex.out = 1.4,
  col.main = "auto",
  col.lab = "auto",
  col.text.out = "auto",
  col.bg = "auto",
  col.bg.out1 = "auto",
  col.bg.out2 = "auto",
  col.text.hi = "auto",
  col.text.lo = "auto",
  theme = getOption("rt.theme", "light"),
  mid.col = "auto",
  hi.color.pos = "#18A3AC",
  hi.color.neg = "#F48024",
  par.reset = TRUE,
  pdf.width = 4.5,
  pdf.height = 4.5,
  filename = NULL
)
}
\arguments{
\item{object}{Either 1. a classification \code{rtMod}, b. a \code{caret::confusionMatrix} object, or c. a matrix /
data.frame / table}

\item{main}{Character: Plot title}

\item{xlab}{Character: x-axis label}

\item{ylab}{Character: y-axis label}

\item{plot.metrics}{Logical: If TRUE, draw classification metrics next to confusion matrix. Default = TRUE}

\item{mod.name}{Character: Name of the algorithm used to make predictions. If NULL, will look for
\code{object$mod.name}. Default = NULL}

\item{oma}{Float, vector, length 4: Outer margins. Default = c(0, 0, 0, 0)}

\item{dim.main}{Float: Height for title. Default = 1}

\item{dim.lab}{Float: Height for labels. Default = 1}

\item{dim.in}{Float: Height/Width for confusion matrix cells. Default = 4}

\item{dim.out}{Float: Height for metrics cells. Default = -1, which autoadjusts depending on number of output classes}

\item{font.in}{Integer: The \code{font} parameter for confusion matrix cells. Default = 2}

\item{font.out}{Integer: The \code{font} parameter for metrics cells. Default = 1}

\item{cex.in}{Float: The \code{cex} parameter for confusion matrix cells. Default = 1.8}

\item{cex.lab}{Float: The \code{cex} parameter for first line of label cells. Default = 1.8}

\item{cex.lab2}{Float: The \code{cex} parameter for second line of label cells. Default = 1.8}

\item{cex.lab3}{Float: The \code{cex} parameter for classification metrics. Default = 1.5}

\item{cex.out}{Float: The \code{cex} parameter for metrics cells. Default = 1.4}

\item{col.main}{Color for title. Default = "auto", determined by \code{theme}}

\item{col.lab}{Color for labels. Default = "auto", determined by \code{theme}}

\item{col.text.out}{Color for metrics cells' text. Default = "auto", determined by \code{theme}}

\item{col.bg}{Color for background. Default = "auto", determined by \code{theme}}

\item{col.bg.out1}{Color for metrics cells' background (row1). Default = "auto", determined by \code{theme}}

\item{col.bg.out2}{Color for metrics cells' background (row2). Default = "auto", determined by \code{theme}}

\item{col.text.hi}{Color for high confusion matrix values. Default = "auto", determined by \code{theme}}

\item{col.text.lo}{Color for low confusion matrix values. Default = "auto", determined by \code{theme}}

\item{theme}{Character: "light", or "dark". Set to \code{options("rt.theme")}, if set, otherwise "light"}

\item{mid.col}{Color: The mid color for the confusion matrix. Default = "auto", which results in "white" for
theme = "light", "black" for "dark"}

\item{hi.color.pos}{Color: The hi color for correct classification. Default = "#18A3AC" (teal)}

\item{hi.color.neg}{Color: The hi color for missclassification. Default = "#F48024" (orange)}

\item{par.reset}{Logical: If TRUE, reset par before exit. Default = TRUE}

\item{pdf.width}{Float: PDF width, if \code{filename} is set}

\item{pdf.height}{Float: PDF height, if \code{filename} is set}

\item{filename}{Character: If specified, save plot to this path. Default = NULL}
}
\value{
List of metrics, invisibly
}
\description{
Plots confusion matrix and classification metrics
}
\author{
Efstathios D. Gennatas
}
