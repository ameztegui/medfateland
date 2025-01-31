\encoding{UTF-8}
\name{getLandscapeLayer}
\alias{getLandscapeLayer}
\alias{getLandscapeVariable}
\title{Landscape variables}
\description{
 Extract or estimate variables from objects \code{\link{SpatialPointsLandscape-class}}, \code{\link{SpatialPixelsLandscape-class}} or \code{\link{SpatialGridLandscape-class}}.
}
\usage{
getLandscapeLayer(obj, variable, SpParams = NULL, ...)
getLandscapeVariable(obj, variable, SpParams = NULL, ...)
}
\arguments{
  \item{obj}{An object of class \code{\link{SpatialPointsLandscape-class}}, \code{\link{SpatialPixelsLandscape-class}} or \code{\link{SpatialGridLandscape-class}}.}
  \item{variable}{A string with the name of the variable to extract (see details).}
  \item{SpParams}{A data frame with species parameters (see \code{\link{SpParamsMED}}), required for most forest stand variables.}
  \item{...}{Additional arguments (not used).}
}
\details{
The following string values are available for \code{variable}. 

\emph{Topography}:
\itemize{
   \item{\code{"elevation"}:}{Elevation in m.}
   \item{\code{"slope"}:}{Slope in degrees.} 
   \item{\code{"aspect"}:}{Slope in degrees.} 
   \item{\code{"lct"}:}{Land cover type.}
}

\emph{Soil}:
\itemize{
   \item{\code{"texture1"}:}{Texture class of the first soil layer.}
   \item{\code{"texture2"}:}{Texture class of the second soil layer.} 
   \item{\code{"texture3"}:}{Texture class of the third soil layer.} 
   \item{\code{"SoilVolExtract"}:}{Total water extractable volume (mm).}
   \item{\code{"SoilVolSAT"}:}{Total water volume at saturation (mm).}
   \item{\code{"SoilVolFC"}:}{Total water volume at field capacity (mm).}
   \item{\code{"SoilVolWP"}:}{Total water volume at wilting point (mm).}
   \item{\code{"SoilVolCurr"}:}{Current total water volume (mm).}
}

\emph{Watershed}:
\itemize{
   \item{\code{"numNeigh"}:}{Number of cell neighbours (integer).}
   \item{\code{"waterOrder"}:}{Cell order for lateral water transfer (integer).}
   \item{\code{"outlets"}:}{Water outlet (TRUE/FALSE).}
   \item{\code{"channel"}:}{Water channel (TRUE/FALSE).}
   \item{\code{"DepthToBedrock"}:}{Depth to bedrock (m).}
   \item{\code{"RockPorosity"}:}{Bedrock porosity.}
   \item{\code{"RockConductivity"}:}{Bedrock conductivity.}
   \item{\code{"AquiferElevation"}:}{Aquifer elevation over bedrock (m).}
   \item{\code{"DepthToAquifer"}:}{Depth to aquifer (m).}
   \item{\code{"AquiferVolume"}:}{Aquifer volume (mm).}
   \item{\code{"Snowpack"}:}{Snowpack water equivalent (mm).}
}

\emph{Forest stand}:
\itemize{
   \item{\code{"basalArea"}:}{Basal area (m2/ha).}
   \item{\code{"LAI"}:}{Leaf area index (m2/m2).} 
   \item{\code{"foliarBiomass"}:}{Foliar biomass (kg/m2).} 
   \item{\code{"fuel"}:}{Fine live fuel (kg/m2).} 
   \item{\code{"phytovolume"}:}{Shrub phytovolume (m3/m2).}
}
}
\value{
Function \code{getLandscapeLayer} returns an object of class \code{\link{SpatialPointsDataFrame}}, \code{\link{SpatialPixelsDataFrame}} or \code{\link{SpatialGridDataFrame}}, depending on the input. Function \code{getLandscapeVariable} returns a numeric or character vector.
}

\author{
Miquel De \enc{Cáceres}{Caceres} Ainsa, CREAF.
}
\seealso{
\code{\link{forest}}, \code{\link{soil}}, \code{\link{summary.forest}}, \code{\link{shinyplotland}}
}
\examples{
#Load data and species parameters from medfate
data(examplepointslandscape)
data(SpParamsMED)

#Calculate basal area for all forest stands
y <- getLandscapeLayer(examplepointslandscape, "basalArea")

#Plot basal area
spplot(y)

# More straigthforwardly
plot(examplepointslandscape, "basalArea")
}
