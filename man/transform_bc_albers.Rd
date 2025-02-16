% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils.R
\name{transform_bc_albers}
\alias{transform_bc_albers}
\title{Transform a Spatial* object to BC Albers projection}
\usage{
transform_bc_albers(obj)
}
\arguments{
\item{obj}{The Spatial* or sf object to transform. \ifelse{html}{\href{https://lifecycle.r-lib.org/articles/stages.html#deprecated}{\figure{lifecycle-deprecated.svg}{options: alt='[Deprecated]'}}}{\strong{[Deprecated]}}
Support for \code{sp} Spatial objects are deprecated.}
}
\value{
the Spatial* or sf object in BC Albers projection
}
\description{
The \code{Spatial} method has been deprecated as of bcmaps 1.2.0 because \code{sp} is being superseded by \code{sf},
and will be removed in Summer 2023. The \code{sf} method is here to stay.
}
