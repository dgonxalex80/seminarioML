# 01- IMPORTAR DATOS 
library(readxl) # paquete para leer libros de excel
     violencia_sex_2020 <- read_excel("data/Indicadores infancia adolescencia y juventud Procuraduria 2020.xlsx", 
                                      sheet = "Ind. Violencia Sexual", 
                                      range = "B9:AJ2237")
