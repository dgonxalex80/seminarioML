# 01- IMPORTAR DATOS 
# Observatorio de Violencia
# Indicadores de infancia, adolescencia y juventud
# 
# https://www.medicinalegal.gov.co/indicadores-procuraduria
# 1. Se descarga la base de datos
# Indicadores_Infancia_adolescencia_juventud_2021.xlsx
#  Se recomienda abrir una carpeta : data al interior del proyecto
library(readxl)
patologia_2021 <- read_excel("data/Indicadores_Infancia_adolescencia_juventud_2021.xlsx",sheet = "Ind. Patología", range = "B9:AJ4344")
violencia_sex_2021 <- read_excel("data/Indicadores_Infancia_adolescencia_juventud_2021.xlsx", sheet = "Ind. Violencia Sexual", range = "B9:AJ2462")
violencia_intrafam_2021 <- read_excel("data/Indicadores_Infancia_adolescencia_juventud_2021.xlsx", sheet = "Ind. Violencia Intrafamiliar", range = "B9:AJ3878")
violencia_interper_2021 <- read_excel("data/Indicadores_Infancia_adolescencia_juventud_2021.xlsx", sheet = "Ind. Violencia Interpersonal", range = "B9:AJ1554")

# cheque de variables

variables21 =data.frame(b1 =names(patologia_2021),
                     b2 = names(violencia_sex_2021), 
                     b3 = names(violencia_intrafam_2021),
                     b4 = names(violencia_interper_2021))

# las variables deben de coincidir
# ok
# ajuste de nombres variables y orden

variables21$b1
variables21$b2



# adicion de variable tipo
patologia_2021$tipo <- rep("ind. patologia", nrow(patologia_2021))
violencia_sex_2021$tipo <- rep("violencia sex", nrow(violencia_sex_2021))
violencia_intrafam_2021$tipo <- rep("violencia intrafam", nrow(violencia_intrafam_2021))
violencia_interper_2021$tipo <- rep("violencia interper", nrow(violencia_interper_2021))                         


#  pegado de las bases
library(dplyr)

# Combinar los data frames por filas y manejar columnas faltantes
# Instala el paquete plyr si no lo has hecho
# install.packages("plyr")
library(tidyverse)
library(plyr)

# Combina los data frames permitiendo columnas faltantes
df21 <- rbind.fill(violencia_sex_2021, 
                        violencia_intrafam_2021, 
                        violencia_interper_2021)

# validacion de que no se requiere el total
sum(df21$`Denominador (Población)`, na.rm = TRUE)
sum(df21$`Hombre Denominador (Población)`, na.rm = TRUE)+ sum(df22$`Mujer Denominador (Población)`, na.rm = TRUE)

# validacion de que no se requiere el total
sum(df21$`Numerador (casos)`)
sum(df21$`Hombre Numerador (casos)`)+ sum(df21$`Mujer Numerador (casos)`)


sum(df21$`Sin Datos Numerador (casos)`, na.rm = TRUE) # ??
sum(df21$`Sin Datos Numerador (casos)`, na.rm = TRUE) # ??



# datos faltantes  o NA
# install.packages("naniar")
library(naniar)
gg_miss_var(df21) # grafico de datos faltantes


# install.packages("VIM")
VIM::aggr(df21, cex.axis = 0.5, cex.lab= 0.8)  # graficos de datos faltantes

# identificacion de los datos faltates

# Identificar las filas con datos completos
filas_completas <- complete.cases(df21)

# Mostrar las filas completas
print(filas_completas)

# Obtener las filas con datos faltantes
filas_con_faltantes <- df21[!filas_completas, ]

# Mostrar las filas con datos faltantes
print(filas_con_faltantes)

#-----------------------------------------------------------
table(df20$`Periodo del Indicador`)
