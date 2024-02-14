# IMPORTAR BASE INDICADORES DE VIOLENCIA SEX 2019

# 01- IMPORTAR DATOS 
library(readxl)


violencia_sex_2019 <- read_excel("data/Indicadores Procuraduria 2019.xlsx",
                                              sheet = "Ind. Violencia Sexual", 
                                              range= "B9:AJ2564")
nvs19=names(violencia_sex_2019)
# 02-   CAMBIO NOMBRE DE VARIABLES
names(violencia_sex_2019)=c("cdep","cmun","cindica", "nomind","contexto", "periodo",
                            "edadR", "casos", "poblacion","tasa", "casosh", "poblacionh", 
                            "tasah", "casosm", "poblacionm", "tasam", "casosNA", 
                            "poblacionNA", "tasaNA",   "rural", "urbana",  "sininfor", 
                            "desplazados", "otros", "discapacitados",    "nodiscapacitados", 
                            "discapacitadoNA", "indigena", "negro", "palenquero", 
                            "raizal",  "ROM", "Sinetnica", "Sininformación", "TOTAL", "tipo") 

# VALIDACION DE VARIABLES
V2019 = names(violencia_sex_2019)


# 03- SELECCION DE VARIABLES 
vsex19 <- violencia_sex_2019
str(vsex19)


# 04- TRATAMIENTO DE DATOS FALTANTES
faltantes <- colSums(is.na(vsex19))
faltantes <- as.data.frame(faltantes) 
faltantes

summary(vsex19)
table(vsex19$cdep)

# install.packages("naniar")
library(naniar)
gg_miss_var(vsex19) # gráfico de datos faltantes



# install.packages("naniar")
library(naniar)
gg_miss_var(vsex19) # grafico de datos faltantes
vsex19 <- vsex19[1:2564,]


# install.packages("naniar")
library(naniar)
vsex19SINA <- na.omit(vsex19)  # elimina todos los valores con  NA
gg_miss_var(vsex19SINA) # gráfico de datos faltantes

# 04- GUARDAR LA BASE DE DATOS AJUSTADA
write.csv(vsex19, "bases/violencia_sex_2019.csv")

