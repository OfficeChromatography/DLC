% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/TLC_prep.R
\name{TLC_prep}
\alias{TLC_prep}
\title{Function to prepare TLC data}
\usage{
TLC_prep(source, dimension, Dep, remove_interband = T, height = 256,
  conv = "ATS")
}
\arguments{
\item{source}{a vector, path of the images files}

\item{dimension}{a dataframe, dimension table with colnames: "Plate_width","First_appli_position", "Band_Length", "Distance_between_tracks", "Tolerance"}

\item{Dep}{a dataframe, dependante variables}

\item{remove_interband}{boolean, T by default, should the interband be removed}

\item{height, }{number of vertical pixels to resize in}
}
\description{
Function to prepare TLC data
}
\examples{
\dontrun{
dimension = read.xlsx("/home/clau/Dropbox/DLC/test/Catechine/TableDimensionCatechine in 1 µl.xls",1)
load("~/Dropbox/DLC/test/Catechine/rTLC Catechine.Rdata")
Dep = data$batch[,8:12]
source = dir("/home/clau/Dropbox/DLC/test/Catechine/",pattern = "254nm",full.names = T)
data = TLC_prep(source= Ind,dimension = dimension,Dep = Dep,height=256)
}
}
\author{
Dimitri Fichou
}
