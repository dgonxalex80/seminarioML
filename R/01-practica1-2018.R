# IMPORTAR BASE INDICADORES DE VIOLENCIA SEX 2018

# 01- IMPORTAR DATOS 
library(readxl)


violencia_sex_2018 <- read_excel("data/Indicadores Procuraduria 2018.xlsx",
                                              sheet = "Ind. Violencia Sexual", 
                                              range= "A8:AE2435")



nvs18=names(violencia_sex_2018)
# 02-   CAMBIO NOMBRE DE VARIABLES
names(violencia_sex_2018)=
  
  etiquetas =c("cdep","cmun","cindica", "nomind","contexto", "periodo",
                            "edadR", "casos", "poblacion","tasa", "casosh", "poblacionh", 
                            "tasah", "casosm", "poblacionm", "tasam", "casosNA", 
                            "poblacionNA", "tasaNA",   "rural", "urbana",  "sininfor", 
                            "desplazados", "otros", "discapacitados",    "nodiscapacitados", 
                            "discapacitadoNA", "indigena", "negro", "palenquero", 
                            "raizal",  "ROM", "Sinetnica", "Sininformación", "TOTAL", "tipo") 

# VALIDACION DE VARIABLES
V2018 = names(violencia_sex_2018)

nvs18=names(violencia_sex_2018)
# 03- SELECCION DE VARIABLES 
vsex18 <- violencia_sex_2018
str(vsex18)


# 04- TRATAMIENTO DE DATOS FALTANTES
faltantes <- colSums(is.na(vsex18))
faltantes <- as.data.frame(faltantes) 
faltantes

summary(vsex18)
table(vsex18$cdep)

# install.packages("naniar")
library(naniar)
gg_miss_var(vsex18) # gráfico de datos faltantes



# install.packages("naniar")
library(naniar)
gg_miss_var(vsex18) # grafico de datos faltantes
vsex19 <- vsex18[1:2435,]


# install.packages("naniar")
library(naniar)
vsex18SINA <- na.omit(vsex18)  # elimina todos los valores con  NA
gg_miss_var(vsex18SINA) # gráfico de datos faltantes

# 04- GUARDAR LA BASE DE DATOS AJUSTADA
write.csv(vsex18, "bases/violencia_sex_2018.csv")

