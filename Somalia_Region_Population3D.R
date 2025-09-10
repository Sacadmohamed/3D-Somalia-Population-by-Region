# Install necessary packages
install.packages(c("terra", "tmap", "rgl"))
remotes::install_github("r-tmap/tmap.mapgl")
install.packages(rgl)
# Load libraries
library(terra)
library(tmap)
library(tmap.mapgl)
library(rgl)

# Load shapefile
somalia_shapefile <- vect("Region.shp")


# Assuming 'somalia_shapefile' has a 'population' attribute
tmap_mode("maplibre")

tm_shape(somalia_shapefile) +
  tm_basemap(NULL) +     # Disable any basemap
  tm_polygons_3d(
    height = "population",
    height.scale = tm_scale_continuous(trans = "sqrt"),  # transform instead of multiply
    fill = "population",
    fill.scale = tm_scale_intervals(style = "quantile", values = "Greens"),
    col = "black",
    lwd = 0.2
  ) +
  tm_maplibre(pitch = 30)