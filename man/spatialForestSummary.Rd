\encoding{UTF-8}
\name{spatialForestSummary}
\alias{spatialForestSummary}
\alias{spatialSoilSummary}
\title{Forest and soil summaries over space}
\description{
 Functions to calculates a summary function for the forest or soil of all spatial elements in an object of class \code{\link{SpatialPointsLandscape-class}}, \code{\link{SpatialPixelsLandscape-class}} or \code{\link{SpatialGridLandscape-class}}.
}
\usage{
spatialForestSummary(object, summaryFunction, ...)
spatialSoilSummary(object, summaryFunction, ...)
}
\arguments{
  \item{object}{An object of class \code{\link{SpatialPointsLandscape-class}}, \code{\link{SpatialPixelsLandscape-class}} or \code{\link{SpatialGridLandscape-class}}.}
  \item{summaryFunction}{A function that accepts objects of class \code{\link{forest}} or \code{soil}, respectively.}
  \item{...}{Additional arguments to the summary function.}
}
\value{
An object of class \code{\link{SpatialPointsDataFrame}}, \code{\link{SpatialPixelsDataFrame}} or \code{\link{SpatialGridDataFrame}}, depending on the input, containing the calculated statistics.
}

\author{
Miquel De \enc{Cáceres}{Caceres} Ainsa, CREAF.
}
\seealso{
\code{\link{forest}}, \code{\link{soil}}, \code{\link{summary.forest}}
}
\examples{
library(medfate)

#Load plot data and species parameters from medfate
data(examplepointslandscape)
data(SpParamsMED)

#Apply summary function
y <- spatialForestSummary(examplepointslandscape,summary.forest, SpParamsMED)
head(y@data)

#Plot basal area
spplot(y["BA"])

}
