# IMPORTAR BASE INDICADORES DE VIOLENCIA SEX 2017

# 01- IMPORTAR DATOS 
library(readxl)


violencia_sex_2017 <- read_excel("data/Indicadores Procuraduría 2017.xlsx", 
                                 sheet = "Ind. Violencia Sexual", 
                                 range = "B9:AO2382")

nvs17=names(violencia_sex_2017)
# 02-   CAMBIO NOMBRE DE VARIABLES
names(violencia_sex_2017)=c("cdep","cmun","cindica", "nomind","contexto", "periodo",
                            "edadR", "casos", "poblacion","tasa", "casosh", "poblacionh", 
                            "tasah", "casosm", "poblacionm", "tasam", "casosNA", 
                            "poblacionNA", "tasaNA",   "rural", "urbana",  "sininfor", 
                            "desplazados", "otros", "discapacitados",    "nodiscapacitados", 
                            "discapacitadoNA", "indigena", "negro", "palenquero", 
                            "raizal",  "ROM", "Sinetnica", "Sininformación", "TOTAL", "tipo") 
nvs17=names(violencia_sex_2017)
# VALIDACION DE VARIABLES
V2017 = names(violencia_sex_2017)


# 03- SELECCION DE VARIABLES 
vsex17 <- violencia_sex_2017
str(vsex17)


# 04- TRATAMIENTO DE DATOS FALTANTES
faltantes <- colSums(is.na(vsex17))
faltantes <- as.data.frame(faltantes) 
faltantes

summary(vsex17)
table(vsex17$cdep)

# install.packages("naniar")
library(naniar)
gg_miss_var(vsex17) # gráfico de datos faltantes



# install.packages("naniar")
library(naniar)
gg_miss_var(vsex17) # grafico de datos faltantes
vsex17 <- vsex17[1:2382,]


# install.packages("naniar")
library(naniar)
vsex17SINA <- na.omit(vsex17)  # elimina todos los valores con  NA
gg_miss_var(vsex17SINA) # gráfico de datos faltantes

# 04- GUARDAR LA BASE DE DATOS AJUSTADA
write.csv(vsex17, "bases/violencia_sex_2017.csv")

