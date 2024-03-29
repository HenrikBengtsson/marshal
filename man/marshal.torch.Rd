% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/marshal.torch.R
\name{marshal.luz_module_fitted}
\alias{marshal.luz_module_fitted}
\alias{marshallable.luz_module_fitted}
\title{Marshalling of 'torch' objects}
\usage{
\method{marshal}{luz_module_fitted}(model, ...)

\method{marshallable}{luz_module_fitted}(...)
}
\arguments{
\item{model}{A \code{luz_module_fitted} object.}

\item{\dots}{Not used.}
}
\value{
A \code{marshalled} object as described in \code{\link[=marshal]{marshal()}}.
}
\description{
Marshalling of 'torch' objects
}
\details{
\code{\link[luz:luz_save]{luz::luz_save()}} is used to produce a marshalled version
of the original object.
\code{\link[luz:luz_load]{luz::luz_load()}} is used to reconstruct a version of the
original object from the marshalled object.
}
