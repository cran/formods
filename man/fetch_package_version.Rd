% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/formods.R
\name{fetch_package_version}
\alias{fetch_package_version}
\title{Fetches the Current Version of Pacakge}
\usage{
fetch_package_version(pkgname)
}
\arguments{
\item{pkgname}{Name of package}
}
\value{
String with the version information
}
\description{
The specified package version is extracted and returned. This
can simply be the version installed from CRAN or if a development version
from GitHub is used details from that will be returned.
}
\examples{
# This package should exist
fetch_package_version('digest')

# This package should not exist
fetch_package_version('bad package name')
}
