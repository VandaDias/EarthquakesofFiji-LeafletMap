library(leaflet)
earthquakes <- datasets::quakes
earthquakes$popup <- paste("Richter magnitude ", earthquakes$mag, "<br>", "Depth", earthquakes$depth, " km")
earthquakesIcon <- makeIcon(iconUrl = "earthquake_icon.png", iconWidth = 20, iconHeight = 20, iconAnchorX = 10, iconAnchorY = 10)
earthquakes %>%
  leaflet() %>%
  addTiles() %>%
  addMarkers(icon = earthquakesIcon, popup = earthquakes$popup, clusterOptions = markerClusterOptions())