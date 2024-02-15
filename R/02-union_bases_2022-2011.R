# PRACTICA 2 - PREPARACION DE DATOS
#
# Objetivo : permitir a los participantes preparar y examinar
# una base de datos

# 1. IMPORTAR LAS BASES DE DATOS

library(readxl) # paquete para leer libros de excel
vsex_2022 <- read_excel("data/Indicadores_infancia_adolescencia_juventud_Procuraduria_2022.xlsx", 
                                 sheet = "Ind. Violencia Sexual", 
                                 range = "B9:AJ2548")

vsex_2021 <-read_excel("data/Indicadores_Infancia_adolescencia_juventud_2021.xlsx", 
                                sheet = "Ind. Violencia Sexual", 
                                range = "B9:AJ2548")

vsex_2020 <- read_excel("data/Indicadores infancia adolescencia y juventud Procuraduria 2020.xlsx", 
                                 sheet = "Ind. Violencia Sexual",
                                 range = "B9:AJ2237")


vsex_2019 <- read_excel("data/Indicadores Procuraduria 2019.xlsx",
                                 sheet = "Ind. Violencia Sexual", 
                                 range= "B9:AJ2564")

vsex_2018 <- read_excel("data/Indicadores Procuraduria 2018.xlsx",
                                 sheet = "Ind. Violencia Sexual", 
                                 range= "A8:AE2435")

vsex_2017 <- read_excel("data/Indicadores Procuraduría 2017.xlsx", 
                                 sheet = "Ind. Violencia Sexual", 
                                 range = "B9:AO2382")

vsex_2017 <- read_excel("data/Indicadores Procuraduría 2017.xlsx", 
                                 sheet = "Ind. Violencia Sexual", 
                                 range = "B9:AO2382")

vsex_2016 <- read_excel("data/Indicadores Procuraduría 2016.xlsx", 
                                 sheet = "Ind. Violencia Sexual", 
                                 range = "B9:AO2228")

vsex_2015 <- read_excel("data/Indicadores Procuraduría 2015.xlsx", 
                                 sheet = "Ind. Violencia Sexual", 
                                 range = "B9:AJ224")


vsex_2014 <- read_excel("data/indicadores de Infancia, adolescencia y juventud 2014.xlsx", 
                                 sheet = "BATERIA VIOLENCIA SEXUAL 2014", 
                                 range = "A1:AE2203")

vsex_2013 <- read_excel("data/indicadores de Infancia, adolescencia y juventud2011-2013.xlsx", 
                                 sheet = "BATERIA IND. VIOLENCIA SEXUAL", 
                                 range = "A1:AD16201")

