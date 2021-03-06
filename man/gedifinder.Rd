% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gedifinder.R
\name{gedifinder}
\alias{gedifinder}
\title{GEDI finder}
\usage{
gedifinder(product, ul_lat, ul_lon, lr_lat, lr_lon, version = "001")
}
\arguments{
\item{product}{GEDI data level; Options: "GEDI01_B", "GEDI02_A" or "GEDI02_B"}

\item{ul_lat}{Numeric. Upper left (ul) corner coordinates, in lat (decimal degrees) for the bounding box of the area of interest.}

\item{ul_lon}{Numeric. Upper left (ul) corner coordinates, in lon (decimal degrees) for the bounding box of the area of interest.}

\item{lr_lat}{Numeric. Lower right (ul) corner coordinates, in lat (decimal degrees) for the bounding box of the area of interest.}

\item{lr_lon}{Numeric. Lower right (ul) corner coordinates, in lon (decimal degrees) for the bounding box of the area of interest.}

\item{version}{Character. The version of the GEDI product files to be returned. Default "001".}
}
\value{
Return a vector object pointing out the path saving the downloaded GEDI data within
the boundary box coordinates provided
}
\description{
This function finds the path to GEDI data within a boundary box coordinates provided
}
\examples{
\donttest{
# gedifinder is a web service provided by NASA
# usually the request takes more than 5 seconds

# Specifying bounding box coordinates
ul_lat<- 42.0
ul_lon<- -100
lr_lat<- 40.0
lr_lon<- -96.0

# Extracting the path to GEDI data for the specified boundary box coordinates
gedi02b_list<-gedifinder(product="GEDI02_B",ul_lat, ul_lon, lr_lat, lr_lon,version="001")
}
}
\seealso{
bbox: The correct format is upper left and lower right corner coordinates, in lat,lon ordering, for the bounding box of the area of interest (e.g. [ul_lat,ul_lon,lr_lat,lr_lon]).
This function just call the gedifinder tool developted by LPDAAC:
https://lpdaacsvc.cr.usgs.gov/services/gedifinder
}
