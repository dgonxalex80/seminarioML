# IMPORTAR BASE INDICADORES DE VIOLENCIA SEX 2021

# 01- IMPORTAR DATOS 
library(readxl)

violencia_sex_2021 <-read_excel("data/Indicadores_Infancia_adolescencia_juventud_2021.xlsx", 
                                sheet = "Ind. Violencia Sexual", 
                                range = "B9:AJ2548")

nvs21=names(violencia_sex_2021)
# 02-   CAMBIO NOMBRE DE VARIABLES
names(violencia_sex_2021)=c("cdep","cmun","cindica", "nomind","contexto", "periodo",
                            "edadR", "casos", "poblacion","tasa", "casosh", "poblacionh", 
                            "tasah", "casosm", "poblacionm", "tasam", "casosNA", 
                            "poblacionNA", "tasaNA",   "rural", "urbana",  "sininfor", 
                            "desplazados", "otros", "discapacitados",    "nodiscapacitados", 
                            "discapacitadoNA", "indigena", "negro", "palenquero", 
                            "raizal",  "ROM", "Sinetnica", "Sininformación", "TOTAL", "tipo") 


# 03- SELECCION DE VARIABLES 
vsex21 <- violencia_sex_2021
str(vsex21)


# 04- TRATAMIENTO DE DATOS FALTANTES
faltantes <- colSums(is.na(vsex21))
faltantes <- as.data.frame(faltantes) 
faltantes

summary(vsex21)
table(vsex21$cdep)

# install.packages("naniar")
library(naniar)
gg_miss_var(vsex21) # gráfico de datos faltantes



# install.packages("naniar")
library(naniar)
gg_miss_var(vsex21) # grafico de datos faltantes
vsex21 <- vsex21[1:2454,]


# install.packages("naniar")
library(naniar)
vsex21SINA <- na.omit(vsex21)  # elimina todos los valores con  NA
gg_miss_var(vsex21SINA) # gráfico de datos faltantes

# 04- GUARDAR LA BASE DE DATOS AJUSTADA
write.csv(vsex21, "data/violencia_sex_2021.csv")

