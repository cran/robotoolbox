## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  message = FALSE,
  warning = FALSE,
  echo = TRUE,
  comment = "#>"
)

## ----setup, echo = FALSE------------------------------------------------------
library(robotoolbox)
library(dplyr)
library(sf)
library(mapview)
mapview::mapviewOptions(
    fgb = FALSE,
    basemaps = c(
      "Esri.WorldImagery",
      "Esri.WorldShadedRelief",
      "OpenTopoMap",
      "OpenStreetMap"),
    layers.control.pos = "topright")

## ----asset_list, echo = FALSE-------------------------------------------------
l <- asset_list

## ---- eval = FALSE------------------------------------------------------------
#  library(robotoolbox)
#  library(dplyr)
#  asset_list <- kobo_asset_list()
#  uid <- filter(asset_list, name == "Spatial data") |>
#    pull(uid)
#  asset <- kobo_asset(uid)
#  asset

## ---- echo = FALSE------------------------------------------------------------
asset <- asset_spatial
asset

## ---- eval = FALSE------------------------------------------------------------
#  df <- kobo_data(asset)
#  glimpse(df)

## ---- echo = FALSE------------------------------------------------------------
df <- data_spatial
glimpse(df)

## -----------------------------------------------------------------------------
pull(df, point)
pull(df, point_wkt)

## -----------------------------------------------------------------------------
df |>
  select(starts_with("point_"))

## -----------------------------------------------------------------------------
pull(df, line)
pull(df, line_wkt)

## -----------------------------------------------------------------------------
pull(df, polygon)
pull(df, polygon_wkt)

## -----------------------------------------------------------------------------
point_sf <- st_as_sf(data_spatial,
                     wkt = "point_wkt", crs = 4326)
mapview(point_sf)

## -----------------------------------------------------------------------------
line_sf <- st_as_sf(data_spatial,
                     wkt = "line_wkt", crs = 4326)
mapview(line_sf)

## -----------------------------------------------------------------------------
poly_sf <- st_as_sf(data_spatial,
                    wkt = "polygon_wkt", crs = 4326)
mapview(poly_sf)

