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
library(dm)

## ----asset_list, echo = FALSE-------------------------------------------------
l <- asset_list

## ----eval = FALSE-------------------------------------------------------------
# library(robotoolbox)
# library(dplyr)
# 
# # Retrieve a list of all assets (projects) from your KoboToolbox server
# asset_list <- kobo_asset_list()
# 
# # Filter the asset list to find the specific project and get its unique identifier (uid)
# uid <- filter(asset_list, name == "nested_roster") |>
#   pull(uid)
# 
# # Load the specific asset (project) using its uid
# asset <- kobo_asset(uid)
# asset

## ----echo = FALSE-------------------------------------------------------------
asset <- asset_rg
asset

## ----eval = FALSE-------------------------------------------------------------
# df <- kobo_data(asset)
# df

## ----echo = FALSE-------------------------------------------------------------
df <- data_rg
df

## ----echo = FALSE-------------------------------------------------------------
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

