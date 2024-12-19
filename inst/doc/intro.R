## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  message = FALSE,
  warning = FALSE,
  echo = TRUE,
  comment = "#>"
)


## ----eval = FALSE-------------------------------------------------------------
# library(robotoolbox)
# kobo_setup(url = "https://kobo.unhcr.org",
#            token = "xxxxxxxxxxxxxxxxxxxxxxxxxx")

## ----eval = FALSE-------------------------------------------------------------
# token <- kobo_token(username = "cool_user_name",
#                     password = "gRe@TP@$$WoRd",
#                     overwrite = TRUE)

## ----eval = FALSE-------------------------------------------------------------
# kobo_setup(url = "https://kobo.unhcr.org",
#            token = token)

## ----eval = FALSE-------------------------------------------------------------
# kobo_settings()
# ## <robotoolbox settings>
# ##    KoboToolbox URL: https://kobo.unhcr.org/
# ##    KoboToolbox API Token: xxxxxxxxxxxxxxxxxxxxxxxxxx

## ----echo = FALSE-------------------------------------------------------------
knitr::include_graphics("./img/list_assets.png")

## ----echo = FALSE-------------------------------------------------------------
library(robotoolbox)
library(dplyr)
asset_list <- robotoolbox::asset_list

## ----eval = FALSE-------------------------------------------------------------
# library(robotoolbox)
# library(dplyr)
# asset_list <- kobo_asset_list()
# 
# asset_list |>
#   slice_head(n = 6) |>
#   knitr::kable()

## ----echo = FALSE-------------------------------------------------------------
asset_list |>
  slice_head(n = 6) |>
  knitr::kable()

## ----eval = FALSE-------------------------------------------------------------
# uid <- "aYuTZn9vegi3Z49MXwKjep"
# asset <- kobo_asset(uid)
# asset

## ----echo = FALSE-------------------------------------------------------------
asset <- robotoolbox::asset_ml
asset

## ----eval = FALSE-------------------------------------------------------------
# asset_list |>
#   filter(name == "Multiple languages") |>
#   pull(uid)

## ----echo = FALSE-------------------------------------------------------------
asset_list |>
  filter(name == "Multiple languages") |>
  pull(uid)

## ----eval = FALSE-------------------------------------------------------------
# asset_list |>
#   filter(name == "Multiple languages") |>
#   pull(uid) |>
#   kobo_asset()

## ----echo = FALSE-------------------------------------------------------------
asset

## ----eval = FALSE-------------------------------------------------------------
# asset_ml <- asset_list |>
#   filter(name == "Multiple languages") |>
#   pull(uid) |>
#   kobo_asset()
# asset_ml

## ----echo = FALSE-------------------------------------------------------------
asset

## ----echo = FALSE-------------------------------------------------------------
data_ml <- robotoolbox::data_ml_default

## ----eval = FALSE-------------------------------------------------------------
# data_ml <- kobo_data(asset_ml)
# 
# data_ml |>
#   select(start:uuid) |>
#   slice_head(n = 3) |>
#   knitr::kable()

## ----echo = FALSE-------------------------------------------------------------
data_ml |>
  select(start:uuid) |>
  slice_head(n = 3) |>
  knitr::kable()

## -----------------------------------------------------------------------------
asset_ml |>
  kobo_form() |>
  knitr::kable()

