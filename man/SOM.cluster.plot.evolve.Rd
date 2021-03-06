% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/SOM.cluster.plot.R
\name{SOM.cluster.plot.evolve}
\alias{SOM.cluster.plot.evolve}
\title{Function to plot the evolution of a picture}
\usage{
SOM.cluster.plot.evolve(data, Normalize = F, grid = c(3, 3), main = "")
}
\arguments{
\item{data}{one list return by SOM.sluster}

\item{Normalize}{if TRUE, the picture will be normalize}

\item{grid}{vector of length 2 containing the dimension of the grid to plot the pictures}

\item{main}{title of the plot}
}
\description{
Function to plot the evolution of a picture
}
\examples{
data <- f.read.image('www/rTLC_demopicture.JPG',format='jpeg',native=F)
data <- data \%>\% redim.array(256)
data \%>\% raster()
}
\author{
Dimitri Fichou
}
