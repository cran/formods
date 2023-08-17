## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

library(formods)

## ---- echo = FALSE, eval=TRUE-------------------------------------------------
curr_mods = FM_fetch_current_mods()
#library(rhandsontable)
#rhandsontable::rhandsontable(curr_mods$df, width=750, rowHeaders = NULL) %>%
#hot_cols(colWidths = c(100, 50, 300, 300)) 

mapping = data.frame(
  col_keys = c("Module", "SN", "htmlOutput", "otherOutput"),
  what     = c("Module", "SN", "htmlOutput", "Other Outputs"),
  stringsAsFactors = FALSE
)

library(flextable)
ft = flextable(curr_mods$df)                       |>
  valign(valign = "top", part = "body")            |>
  set_header_df(mapping = mapping, key="col_keys") |>
  autofit()                                        |>
  theme_vanilla()
ft

