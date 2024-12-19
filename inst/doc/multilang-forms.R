## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  message = FALSE,
  warning = FALSE,
  echo = TRUE,
  comment = "#>")

## ----eval = FALSE-------------------------------------------------------------
# library(robotoolbox)
# library(dplyr)
# uid <- "aYuTZn9vegi3Z49MXwKjep"
# asset <- kobo_asset(uid)
# asset

## ----echo = FALSE-------------------------------------------------------------
library(robotoolbox)
library(dplyr)
asset <- asset_ml
asset

## ----list_lang----------------------------------------------------------------
kobo_lang(asset)

## ----eval = FALSE-------------------------------------------------------------
# df_en <- kobo_data(asset, lang = "English (en)")
# df_fr <- kobo_data(asset, lang = "Francais (fr)")
# df_ar <- kobo_data(asset, lang = "Arabic (ar)")
# glimpse(df_en)

## ----echo = FALSE-------------------------------------------------------------
df_en <- data_ml_en
df_fr <- data_ml_fr
df_ar <- data_ml_ar
glimpse(df_en)

## ----eval = FALSE-------------------------------------------------------------
# df_default <- kobo_data(asset)
# all.equal(df_default, df_en)

## ----echo = FALSE-------------------------------------------------------------
df_default <- data_ml_default
all.equal(df_default, df_en)

## ----var_label1---------------------------------------------------------------
library(labelled)
var_label(df_en$full_name)
var_label(df_fr$full_name)
var_label(df_ar$full_name)

## ----var_label2---------------------------------------------------------------
var_label(df_en$pet_yesno)
var_label(df_fr$pet_yesno)
var_label(df_ar$pet_yesno)

## ----colvar1, eval = FALSE, echo = TRUE---------------------------------------
# kobo_data(asset_ml,
#           colnames_label = TRUE, lang = "Arabic (ar)") |>
# names()

## ----colvar2, eval = TRUE, echo = FALSE---------------------------------------
names(data_ml_vlabel)

## ----val_label----------------------------------------------------------------
table(to_factor(df_en$pet_yesno))
table(to_factor(df_fr$pet_yesno))
table(to_factor(df_ar$pet_yesno))

## ----val_label_character------------------------------------------------------
count(df_ar, pet_yesno_ar = to_character(pet_yesno))

## ----echo = TRUE, eval = FALSE------------------------------------------------
# data_sm <- kobo_data(uid)
# glimpse(data_sm)

## ----echo = FALSE, eval = TRUE------------------------------------------------
library(dplyr)
library(robotoolbox)
glimpse(data_sm)

## ----echo = TRUE, eval = FALSE------------------------------------------------
# data_sm_label <- kobo_data(uid,
#                            select_multiple_label = TRUE)
# glimpse(data_sm_label)

## ----echo = FALSE, eval = TRUE------------------------------------------------
glimpse(data_sm_label)

## ----eval = TRUE--------------------------------------------------------------
var_label(data_sm_label)

