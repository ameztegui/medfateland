.getAllowedTopographyVars <-function() {
  return(c( "Elevation (m)" = "elevation", 
            "Slope (degrees)" = "slope", 
            "Aspect (degrees)" = "aspect", 
            "Land cover type" ="lct"))
}
.getLandscapeTopographyVar<-function(obj, variable) {
  if(variable=="lct") {
    varplot = factor(obj@lct)
  } else if(variable=="elevation") {
    varplot = obj@data$elevation
  } else if(variable=="slope") {
    varplot = obj@data$slope
  } else if(variable=="aspect") {
    varplot = obj@data$aspect
  }
  return(varplot)
}

.getAllowedSoilVars <-function() {
  return(c("Texture (first layer)" = "texture1", 
           "Texture (second layer)" = "texture2", 
           "Texture (third layer)" ="texture3",
           "Total water extractable volume (mm)" = "SoilVolExtract",
           "Total water volume at saturation (mm)" = "SoilVolSAT",
           "Total water volume at field capacity (mm)" = "SoilVolFC",
           "Total water volume at wilting point (mm)" = "SoilVolWP",
           "Current total water volume (mm)" = "SoilVolCurr",
           "Soil moisture (first layer)" = "theta1",
           "Soil moisture (second layer)" = "theta2",
           "Soil moisture (third layer)" = "theta3",
           "Water potential (first layer)" = "psi1",
           "Water potential (second layer)" = "psi2",
           "Water potential (third layer)" = "psi3"))
}
.getLandscapeSoilVar<-function(obj, variable) {
  n = length(obj@soillist)
  varplot = rep(NA, n)
  for(i in 1:n) {
    s = obj@soillist[[i]]
    if(inherits(s,"soil")) {
      if(variable=="texture1") varplot[i] = soil_USDAType(s$clay[1],s$sand[1])
      else if(variable=="texture2") varplot[i] = soil_USDAType(s$clay[2],s$sand[2])
      else if(variable=="texture3") varplot[i] = soil_USDAType(s$clay[3],s$sand[3])
      else if(variable=="SoilVolExtract") varplot[i] = sum(soil_waterExtractable(s), na.rm=TRUE)
      else if(variable=="SoilVolSAT") varplot[i] = sum(soil_waterSAT(s), na.rm=TRUE)
      else if(variable=="SoilVolFC") varplot[i] = sum(soil_waterFC(s), na.rm=TRUE)
      else if(variable=="SoilVolWP") varplot[i] = sum(soil_waterWP(s), na.rm=TRUE)
      else if(variable=="SoilVolCurr") varplot[i] = sum(soil_water(s), na.rm=TRUE)
      else if(variable=="theta1") varplot[i] = soil_theta(s)[1]
      else if(variable=="theta2") varplot[i] = soil_theta(s)[2]
      else if(variable=="theta3") varplot[i] = soil_theta(s)[3]
      else if(variable=="psi1") varplot[i] = soil_psi(s)[1]
      else if(variable=="psi2") varplot[i] = soil_psi(s)[2]
      else if(variable=="psi3") varplot[i] = soil_psi(s)[3]
    }
  }
  return(varplot)
}

.getAllowedWatershedVars <-function(){
  return(c("Number of cell neighbours" = "numNeigh", 
           "Cell order for lateral water transfer" = "waterOrder", 
           "Water outlet (binary)" = "outlets", 
           "Water channel (binary)" = "channel",
           "Depth to bedrock (m)" = "DepthToBedrock",
           "Bedrock porosity" = "RockPorosity", 
           "Bedrock conductivity" = "RockConductivity",
           "Aquifer elevation (m)" = "AquiferElevation", 
           "Depth to aquifer (m)" = "DepthToAquifer",
           "Aquifer volume (mm)" = "AquiferVolume", 
           "Snowpack water equivalent (mm)" = "Snowpack"))
}
.getLandscapeWatershedVar<-function(obj, variable) {
  if(variable=="numNeigh") {
    varplot = sapply(obj@queenNeigh,"length")
  } else if(variable=="waterOrder") {
    wo = obj@waterOrder
    varplot = 1:length(wo)
    varplot[wo] = 1:length(wo)
  } else if(variable=="outlets") {
    outlets = which(unlist(lapply(obj@waterQ, sum))==0)
    varplot = rep(FALSE, length(obj@waterQ))
    varplot[outlets] = TRUE
  } else if(variable=="channel") {
    varplot = obj@channel
  } else if(variable =="DepthToBedrock") {
    varplot = obj@bedrock$DepthToBedrock/1000.0  # in m
  } else if(variable =="RockPorosity") {
    varplot = obj@bedrock$Porosity
  } else if(variable =="RockConductivity") {
    varplot = obj@bedrock$Conductivity
  } else if(variable =="AquiferVolume") {
    varplot = obj@aquifer
  } else if(variable =="AquiferElevation") {
    DTB = obj@bedrock$DepthToBedrock
    aquifer = obj@aquifer
    RockPorosity = obj@bedrock$Porosity
    elevation = obj@data$elevation
    varplot = elevation - (DTB/1000.0) + (aquifer/RockPorosity)/1000.0 # in m
    varplot[RockPorosity==0.0] = elevation[RockPorosity==0.0]
  } else if(variable=="Snowpack") {
    varplot = obj@snowpack
  } else if(variable =="DepthToAquifer") {
    DTB = obj@bedrock$DepthToBedrock
    aquifer = obj@aquifer
    RockPorosity = obj@bedrock$Porosity
    varplot = (DTB/1000.0) - (aquifer/RockPorosity)/1000.0
    varplot[RockPorosity==0.0] = DTB[RockPorosity==0.0]/1000
  }
  return(varplot)
}

.getAllowedForestStandVars <-function(SpParams = NULL) {
  vars <- c("Basal area (m2/ha)"="basalArea")
  if(!is.null(SpParams)) {
    vars <- c(vars,
              "Leaf area index (m2/m2)" = "LAI", 
              "Foliar biomass (kg/m2)" = "foliarBiomass", 
              "Fine live fuel (kg/m2)" = "fuel", 
              "Shrub phytovolume (m3/m2)" = "phytovolume")
  }
  return(vars)
}
.getLandscapeForestStandVar<-function(obj, variable, SpParams = NULL) {
  n = length(obj@forestlist)
  varplot = rep(NA, n)
  for(i in 1:n) {
    f = obj@forestlist[[i]]
    if(inherits(f,"forest")) {
      if(variable=="basalArea") varplot[i] = stand_basalArea(f)
      else if(variable=="LAI") varplot[i] = stand_LAI(f, SpParams)
      else if(variable=="foliarBiomass") varplot[i] = stand_foliarBiomass(f, SpParams)
      else if(variable=="fuel") varplot[i] = stand_fuel(f, SpParams)
      else if(variable=="phytovolume") varplot[i] = stand_phytovolume(f, SpParams)
    }
  }
  return(varplot)
}

.getAllowedVars <-function(y, SpParams = NULL) {
  vars = character(0)
  if(inherits(y, c("SpatialPointsLandscape", "SpatialPixelsLandscape", "SpatialGridLandscape"))) {
    vars = c(vars, .getAllowedTopographyVars(),.getAllowedSoilVars(),.getAllowedForestStandVars(SpParams))
  }
  if(inherits(y, "DistributedWatershed")) {
    vars = c(vars, .getAllowedWatershedVars())
  }
  return(vars)
}
.getLandscapeVar<-function(obj, variable, SpParams = NULL, ...) {
  variable = match.arg(variable, .getAllowedVars(obj, SpParams))
  if(variable %in% .getAllowedTopographyVars()) return(.getLandscapeTopographyVar(obj, variable))
  else if(variable %in% .getAllowedSoilVars()) return(.getLandscapeSoilVar(obj, variable))
  else if(variable %in% .getAllowedWatershedVars()) return(.getLandscapeWatershedVar(obj, variable))
  else if(variable %in% .getAllowedForestStandVars(SpParams)) return(.getLandscapeForestStandVar(obj, variable, SpParams))
}

setGeneric("getLandscapeVariable", function(obj, variable = "lct", SpParams = NULL, ...){
  standardGeneric("getLandscapeVariable")
})
setMethod("getLandscapeVariable", signature("SpatialPixelsLandscape"),
          function(obj, variable = "lct", SpParams = NULL, ...) {
            return(.getLandscapeVar(obj, variable, SpParams, ...))
          })

setMethod("getLandscapeVariable", signature("SpatialGridLandscape"),
          function(obj, variable = "lct", SpParams = NULL, ...) {
            return(.getLandscapeVar(obj, variable, SpParams, ...))
          })
setMethod("getLandscapeVariable", signature("SpatialPointsLandscape"),
          function(obj, variable = "lct", SpParams = NULL, ...) {
            return(.getLandscapeVar(obj, variable, SpParams, ...))
          })
setMethod("getLandscapeVariable", signature("DistributedWatershed"),
          function(obj, variable = "lct", SpParams = NULL, ...) {
            return(.getLandscapeVar(obj, variable, SpParams, ...))
          })


setGeneric("getLandscapeLayer", valueClass ="Spatial", function(obj, variable = "lct", SpParams = NULL, ...){
  standardGeneric("getLandscapeLayer")
})
setMethod("getLandscapeLayer", signature("SpatialPixelsLandscape"),
          function(obj, variable = "lct", SpParams = NULL, ...) {
            df<-data.frame(y = .getLandscapeVar(obj, variable, SpParams, ...))
            names(df) <- variable
            return(SpatialPixelsDataFrame(as(obj,"SpatialPoints"), df, grid = obj@grid))
          })
setMethod("getLandscapeLayer", signature("SpatialGridLandscape"),
          function(obj, variable = "lct", SpParams = NULL, ...) {
            df<-data.frame(y = .getLandscapeVar(obj, variable, SpParams,...))
            names(df) <- variable
            return(SpatialGridDataFrame(obj@grid, df, proj4string = obj@proj4string))
          })
setMethod("getLandscapeLayer", signature("SpatialPointsLandscape"),
          function(obj, variable = "lct", SpParams = NULL, ...) {
            df<-data.frame(y = .getLandscapeVar(obj, variable, SpParams,...))
            names(df) <- variable
            return(SpatialPointsDataFrame(obj@coords, df,proj4string = obj@proj4string))
          })
setMethod("getLandscapeLayer", signature("DistributedWatershed"),
          function(obj, variable = "lct", SpParams = NULL, ...) {
            df<-data.frame(y = .getLandscapeVar(obj, variable, SpParams,...))
            names(df) <- variable
            return(SpatialPixelsDataFrame(as(obj,"SpatialPoints"),df,grid = obj@grid))
          })


