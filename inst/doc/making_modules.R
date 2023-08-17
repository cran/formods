## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## -----------------------------------------------------------------------------
library(formods)
# This creates the state and session objects
sess_res = UD_test_mksession(session=list())
state    = sess_res$state
session  = sess_res$session

# Here we load an example dataset into the df object.
data_file_local =  system.file(package="formods", "test_data", "TEST_DATA.xlsx")
sheet           = "DATA"

df = readxl::read_excel(path=data_file_local, sheet=sheet)

## -----------------------------------------------------------------------------
hfmt = FM_fetch_data_format(df, state)

# Descriptive headers 
head(as.vector(unlist( hfmt[["col_heads"]])))

# Subtext
head(as.vector(unlist( hfmt[["col_subtext"]])))

## -----------------------------------------------------------------------------
hot = rhandsontable::rhandsontable(
  head(df),
  width      = "100%",
  height     = "100%",
  colHeaders = as.vector(unlist(hfmt[["col_heads"]])),
  rowHeaders = NULL
  )

## ---- echo=FALSE--------------------------------------------------------------
hot

## ----echo=FALSE, message=FALSE, warning=FALSE, eval=TRUE, class.output=".scroll-100", comment=''----
yaml= file.path(system.file(package="formods"), "templates", "formods.yaml")
cat(readLines(file.path(system.file(package="formods"), "templates", "formods.yaml")), sep="\n")

#library(shiny)
#library(shinyAce)
# renderUI({
# aceEditor("formods", value=readLines(file.path(system.file(package="formods"), "templates", "formods.yaml")))
# })

# yamls = list(
#   formods.yaml= file.path(system.file(package="formods"), "templates", "formods.yaml"),
#   ASM.yaml    = file.path(system.file(package="formods"), "templates", "ASM.yaml"),
#   DS.yaml     = file.path(system.file(package="formods"), "templates", "DW.yaml") 
#   
# )
# 
# for(yaml in names(yamls)){
# # cat("``` yaml")
#   cat(paste(readLines(file.path(system.file(package="formods"), "templates", "formods.yaml"))), collapse="\n")
# }

