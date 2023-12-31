% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/formods.R
\name{use_formods}
\alias{use_formods}
\title{Create Module Templates in a Package Repository}
\usage{
use_formods(
  SN = "NM",
  Module_Name = "New Module",
  package = "pkgname",
  element = "analysis",
  overwrite = FALSE,
  repo_root = NULL
)
}
\arguments{
\item{SN}{Module short name}

\item{Module_Name}{Module long name}

\item{package}{Name of package that will contain the module}

\item{element}{What you would call the thing the module provides for example
the FG module provides "figures", the DW module provides "data views"}

\item{overwrite}{Boolean to indicate if you should overwrite files}

\item{repo_root}{Root of the repository.}
}
\value{
Same as the return value for new_module_template()
}
\description{
If you are developing a package within a repository (i.e. git)
and want to create a new formods module this function will
create the template files for you and install them in the correct location.
}
\examples{
if(FALSE){
  use_formods(repo_root=tempdir())
}
}
