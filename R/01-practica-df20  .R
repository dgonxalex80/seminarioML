# 02- IMPORTAR DATOS 
# Observatorio de Violencia
# Indicadores de infancia, adolescencia y juventud
# 
# https://www.medicinalegal.gov.co/indicadores-procuraduria
# 1. Se descarga la base de datos
# Indicadores_Infancia_adolescencia_juventud_2021.xlsx
#  Se recomienda abrir una carpeta : data al interior del proyecto
library(readxl)
         patologia_2020 <- read_excel("data/Indicadores infancia adolescencia y juventud Procuraduria 2020.xlsx",sheet = "Ind. Patología", range = "B9:AJ3978")
     violencia_sex_2020 <- read_excel("data/Indicadores infancia adolescencia y juventud Procuraduria 2020.xlsx", sheet = "Ind. Violencia Sexual", range = "B9:AJ2237")
violencia_intrafam_2020 <- read_excel("data/Indicadores infancia adolescencia y juventud Procuraduria 2020.xlsx", sheet = "Ind. Violencia Intrafamiliar", range = "B9:AJ3836")
violencia_interper_2020 <- read_excel("data/Indicadores infancia adolescencia y juventud Procuraduria 2020.xlsx", sheet = "Ind. Violencia Interpersonal", range = "B9:AJ1403")

# cheque de variables

variables20 =data.frame(b1 =names(patologia_2020),
                      b2 = names(violencia_sex_2020), 
                      b3 = names(violencia_intrafam_2020),
                      b4 = names(violencia_interper_2020))

# las variables deben de coincidir
# ok
# ajuste de nombres variables y orden

variable20s$b1
variables20$b2



# adicion de variable tipo
patologia_2020$tipo <- rep("ind. patologia", nrow(patologia_2020))
violencia_sex_2020$tipo <- rep("violencia sex", nrow(violencia_sex_2020))
violencia_intrafam_2020$tipo <- rep("violencia intrafam", nrow(violencia_intrafam_2020))
violencia_interper_2020$tipo <- rep("violencia interper", nrow(violencia_interper_2020))                         


#  pegado de las bases
library(dplyr)

# Combinar los data frames por filas y manejar columnas faltantes
# Instala el paquete plyr si no lo has hecho
# install.packages("plyr")
library(tidyverse)
library(plyr)

# Combina los data frames permitiendo columnas faltantes
df20 <- rbind.fill(violencia_sex_2020, 
                   violencia_intrafam_2020, 
                   violencia_interper_2020)

# validacion de que no se requiere el total
sum(df20$`Denominador (Población)`, na.rm = TRUE)
sum(df20$`Hombre Denominador (Población)`, na.rm = TRUE)+ sum(df20$`Mujer Denominador (Población)`, na.rm = TRUE)

# validacion de que no se requiere el total
sum(df20$`Numerador (casos)`)
sum(df20$`Hombre Numerador (casos)`)+ sum(df20$`Mujer Numerador (casos)`)


sum(df20$`Sin Datos Numerador (casos)`, na.rm = TRUE) # ??
sum(df20$`Sin Datos Numerador (casos)`, na.rm = TRUE) # ??



# datos faltantes  o NA
# install.packages("naniar")
library(naniar)
gg_miss_var(df20) # grafico de datos faltantes


# install.packages("VIM")
VIM::aggr(df20, cex.axis = 0.5, cex.lab= 0.8)  # graficos de datos faltantes

# identificacion de los datos faltates

# Identificar las filas con datos completos
filas_completas <- complete.cases(df20)

# Mostrar las filas completas
print(filas_completas)

# Obtener las filas con datos faltantes
filas_con_faltantes <- df20[!filas_completas, ]

# Mostrar las filas con datos faltantes
print(filas_con_faltantes)

#-----------------------------------------------------------

