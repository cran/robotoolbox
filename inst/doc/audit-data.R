## ----include = FALSE----------------------------------------------------------
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

## ----asset_list, echo = FALSE-------------------------------------------------
l <- asset_list

## ----eval = FALSE-------------------------------------------------------------
# library(robotoolbox)
# library(dplyr)
# asset_list <- kobo_asset_list()
# uid <- filter(asset_list, name == "Audit multi params") |>
#   pull(uid)
# asset <- kobo_asset(uid)
# asset

## ----echo = FALSE-------------------------------------------------------------
asset <- asset_audit
asset

## ----eval = FALSE-------------------------------------------------------------
# df <- kobo_audit(asset)
# glimpse(df)

## ----echo = FALSE-------------------------------------------------------------
df <- data_audit
glimpse(df)

