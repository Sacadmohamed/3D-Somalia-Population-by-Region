# Somalia 3D Population Visualization
<img width="905" height="515" alt="image" src="https://github.com/user-attachments/assets/8008576b-123c-4a91-80a3-891ea6b2ac01" />


This R script visualizes the population of Somalia’s regions as **3D extruded polygons**, using the `tmap.mapgl` extension with `maplibre` for interactive WebGL rendering.

##  Features

-  **No basemap** — keeps the focus entirely on the data.
-  **Blue-green color palette** (`Greens`) for intuitive population representation.
-  **3D extrusion** where polygon height reflects population values.
-  **Interactive tilt** with `tm_maplibre(pitch = 30)` for enhanced perspective.

##  Installation

Install the required R packages:

```r
install.packages(c("terra", "tmap", "rgl"))
remotes::install_github("r-tmap/tmap.mapgl")
