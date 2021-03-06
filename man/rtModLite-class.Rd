% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rtMod.R
\docType{class}
\name{rtModLite-class}
\alias{rtModLite-class}
\alias{rtModLite}
\title{\pkg{rtemis} Lite Supervised Model Class}
\description{
R6 Class for \pkg{rtemis} Lite Supervised Models
}
\details{
Note on terminology for all models:
The training set is used to build a model. The testing set is a separate set never touched during
training and only used to a. create predictions using the trained model and b. estimate error metrics.
This reflects generalizability of the model and is the error we care the most about. It is saved in rtemis models
as \code{error.test}.
The validation set is used during model tuning. Within rtemis, validation sets are created and
used automatically by \link{resample} when appropriate, they are not generally input by the user
(with few exceptions).
}
\section{Public fields}{
\if{html}{\out{<div class="r6-fields">}}
\describe{
\item{\code{mod.name}}{Learner algorithm names}

\item{\code{mod}}{Trained model}
}
\if{html}{\out{</div>}}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-new}{\code{rtModLite$new()}}
\item \href{#method-print}{\code{rtModLite$print()}}
\item \href{#method-clone}{\code{rtModLite$clone()}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-new"></a>}}
\subsection{Method \code{new()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{rtModLite$new(mod = list(), mod.name = character(), fitted = numeric())}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-print"></a>}}
\subsection{Method \code{print()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{rtModLite$print()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-clone"></a>}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{rtModLite$clone(deep = FALSE)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{deep}}{Whether to make a deep clone.}
}
\if{html}{\out{</div>}}
}
}
}
