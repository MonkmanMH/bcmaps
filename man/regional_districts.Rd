% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/shortcuts.R
\name{regional_districts}
\alias{regional_districts}
\title{British Columbia Regional Districts}
\source{
\code{bcdata::bcdc_get_data(record = 'd1aff64e-dbfe-45a6-af97-582b7f6418b9', resource = '57c7f719-dc87-415c-8be7-ef2f95289397')}
}
\usage{
regional_districts(class = deprecated(), ask = interactive(), force = FALSE)
}
\arguments{
\item{class}{what class you want the object in? \code{"sf"} (default) or \code{"sp"}. \ifelse{html}{\href{https://lifecycle.r-lib.org/articles/stages.html#deprecated}{\figure{lifecycle-deprecated.svg}{options: alt='[Deprecated]'}}}{\strong{[Deprecated]}}.
The \code{class} argument
is deprecated as of bcmaps 1.2.0 and will be removed in Summer 2023. At that point this function will only return an \code{sf} object.}

\item{ask}{Should the function ask the user before downloading the data to a cache? Defaults to the value of interactive().}

\item{force}{Should you force download the data?}
}
\value{
The spatial layer of \code{regional_districts} in the desired class
}
\description{
British Columbia Regional Districts
}
\examples{
\dontrun{
my_layer <- regional_districts()
}

}
\seealso{
\code{\link[=combine_nr_rd]{combine_nr_rd()}} to combine Regional Districts and the Northern Rockies Regional Municipality into one layer
}
