library(tidyverse)
library(flextable)
library(dplyr)
library(readxl)
library(janitor)
library(purrr)
library(data.table)
library(DT)
library(kableExtra)
library(datasauRus)


String <- read_excel("D:/acdm1/OneDrive - Escuela Superior de Administración Publica/Andrea/00_Sharepoint_Repositorio/MUNICIPIOS_5TAY6TA/00_CONCURSO_V_Y_VI/INPUTS/INSUMO_FINAL/VO_20230910/ANCHO/STRING.xlsx")


muestrastring <- String %>% 
  sample_n(100, replace = FALSE)

muestrastring[muestrastring == "NA"] <- NA 
string_NA <- is.na(muestrastring)
