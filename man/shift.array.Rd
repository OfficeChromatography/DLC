% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/shift.array.R
\name{shift.array}
\alias{shift.array}
\title{Function to shift a 3D array}
\usage{
shift.array(data, margin, shift)
}
\arguments{
\item{data}{3D array}

\item{margin}{direction to shift}

\item{shift}{number to shift}
}
\description{
Function to shift a 3D array
}
\examples{
data <- f.read.image('www/rTLC_demopicture.JPG',format='jpeg',native=F)
data <- data \%>\% redim.array(256)
data \%>\% raster()
}
\author{
Dimitri Fichou
}
