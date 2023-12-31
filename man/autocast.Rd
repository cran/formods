% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/formods.R
\name{autocast}
\alias{autocast}
\title{Automatically Cast UI Input Variable}
\usage{
autocast(ui_input, quote_char = TRUE)
}
\arguments{
\item{ui_input}{UI input from a shiny form}

\item{quote_char}{TRUE will include double quotes in the character string}
}
\value{
Best guess of type casting applied to the ui_input
}
\description{
Takes UI input and tries to figure out if it's numeric or text
}
\examples{
number = autocast('10')
text   = autocast('ten')
}
