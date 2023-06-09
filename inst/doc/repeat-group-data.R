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
library(dm)

## ----asset_list, echo = FALSE-------------------------------------------------
l <- asset_list

## ---- eval = FALSE------------------------------------------------------------
#  library(robotoolbox)
#  library(dplyr)
#  asset_list <- kobo_asset_list()
#  uid <- filter(asset_list, name == "nested_roster") |>
#    pull(uid)
#  asset <- kobo_asset(uid)
#  asset

## ---- echo = FALSE------------------------------------------------------------
asset <- asset_rg
asset

## ---- eval = FALSE------------------------------------------------------------
#  df <- kobo_data(asset)
#  df

## ---- echo = FALSE------------------------------------------------------------
df <- data_rg
df

## ---- echo = FALSE------------------------------------------------------------
class(df)

## ----draw_data----------------------------------------------------------------
library(dm)
dm_draw(df)

## ----nrow_data----------------------------------------------------------------
dm_nrow(df)

## ----access_specific1---------------------------------------------------------
glimpse(df$main)

## ----access_specific2---------------------------------------------------------
glimpse(df$education)

## ----filter_data--------------------------------------------------------------
df |>
  dm_filter(main = (`_index` == 2)) |>
  dm_nrow()

## ----join_two-----------------------------------------------------------------
df |>
  dm_flatten_to_tbl(.start = education,
                    .join = left_join) |>
  glimpse()

## ----join_all-----------------------------------------------------------------
df |>
  dm_flatten_to_tbl(.start = hobbies_list,
                    .join = left_join,
                    .recursive = TRUE) |>
  glimpse()

