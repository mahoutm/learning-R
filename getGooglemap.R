library(ggmap)
# central park
mapImageData1 <- get_map(location = c(lon = -73.960987, lat = 40.783598),
                         color = c("color"),source = "google",
                         maptype = c("satellite"),zoom = 14)

ggmap(mapImageData1,
      extent = "device",
      ylab = "Latitude",
      xlab = "Longitude")
