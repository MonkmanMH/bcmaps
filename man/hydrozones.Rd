% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/shortcuts.R
\name{hydrozones}
\alias{hydrozones}
\title{Hydrologic Zone Boundaries of British Columbia}
\source{
\code{bcdata::bcdc_get_data(record = '329fd234-8835-4d44-9aaa-97c37bfc8d92', resource = 'baeb665e-85c7-4a7b-8e67-8b956785490a')}
}
\usage{
hydrozones(class = deprecated(), ask = interactive(), force = FALSE)
}
\arguments{
\item{class}{what class you want the object in? \code{"sf"} (default) or \code{"sp"}. \ifelse{html}{\href{https://lifecycle.r-lib.org/articles/stages.html#deprecated}{\figure{lifecycle-deprecated.svg}{options: alt='[Deprecated]'}}}{\strong{[Deprecated]}}.
The \code{class} argument
is deprecated as of bcmaps 1.2.0 and will be removed in Summer 2023. At that point this function will only return an \code{sf} object.}

\item{ask}{Should the function ask the user before downloading the data to a cache? Defaults to the value of interactive().}

\item{force}{Should you force download the data?}
}
\value{
The spatial layer of \code{hydrozones} in the desired class
}
\description{
Hydrologic Zone Boundaries of British Columbia
}
\examples{
\dontrun{
my_layer <- hydrozones()
}

}
