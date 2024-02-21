require(sp)
require(rgdal)
require(raster)

cali=shapefile("/map/cali.shp")
plot(cali)
cali@data$indice=rnorm(22)
spplot(cali[,21])

cali_2=cali[,4]
