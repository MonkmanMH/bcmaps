% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get-non-catalogue-data.R
\name{mapsheets_250K}
\alias{mapsheets_250K}
\title{NTS 250K Grid - Digital Baseline Mapping at 1:250,000 (NTS)}
\source{
https://open.canada.ca/data/en/dataset/055919c2-101e-4329-bfd7-1d0c333c0e62
}
\usage{
mapsheets_250K(class = deprecated())
}
\arguments{
\item{class}{what class you want the object in? \code{"sf"} (default) or \code{"sp"}. \ifelse{html}{\href{https://lifecycle.r-lib.org/articles/stages.html#deprecated}{\figure{lifecycle-deprecated.svg}{options: alt='[Deprecated]'}}}{\strong{[Deprecated]}}.
The \code{class} argument
is deprecated as of bcmaps 1.2.0 and will be removed in Summer 2023. At that point this function will only return an \code{sf} object.}
}
\value{
The spatial layer of \code{mapsheets_250K} in the desired class
}
\description{
NTS 250K Grid - Digital Baseline Mapping at 1:250,000 (NTS)
}
\examples{
\dontrun{
my_layer <- mapsheets_250K()
my_layer_sp <- mapsheets_250K(class = 'sp')
}

}
