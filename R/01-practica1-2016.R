# IMPORTAR BASE INDICADORES DE VIOLENCIA SEX 2016
# 01- IMPORTAR DATOS 
library(readxl)


violencia_sex_2016 <- read_excel("data/Indicadores Procuraduría 2016.xlsx", 
                                  sheet = "Ind. Violencia Sexual", 
                                  range = "B9:AO2228")

nvs16=names(violencia_sex_2016)
# 02-   CAMBIO NOMBRE DE VARIABLES
names(violencia_sex_2016)=c("cdep","cmun","cindica", "nomind","contexto", "periodo",
                            "edadR", "casos", "poblacion","tasa", "casosh", "poblacionh", 
                            "tasah", "casosm", "poblacionm", "tasam", "casosNA", 
                            "poblacionNA", "tasaNA",   "rural", "urbana",  "sininfor", 
                            "desplazados", "otros", "discapacitados",    "nodiscapacitados", 
                            "discapacitadoNA", "indigena", "negro", "palenquero", 
                            "raizal",  "ROM", "Sinetnica", "Sininformación", "TOTAL", "tipo") 

# VALIDACION DE VARIABLES
V2016 = names(violencia_sex_2016)


# 03- SELECCION DE VARIABLES 
vsex16 <- violencia_sex_2016
str(vsex16)


# 04- TRATAMIENTO DE DATOS FALTANTES
faltantes <- colSums(is.na(vsex16))
faltantes <- as.data.frame(faltantes) 
faltantes

summary(vsex16)
table(vsex16$cdep)

# install.packages("naniar")
library(naniar)
gg_miss_var(vsex16) # gráfico de datos faltantes



# install.packages("naniar")
library(naniar)
gg_miss_var(vsex16) # grafico de datos faltantes
vsex16 <- vsex16[1:2228,]


# install.packages("naniar")
library(naniar)
vsex16SINA <- na.omit(vsex16)  # elimina todos los valores con  NA
gg_miss_var(vsex16SINA) # gráfico de datos faltantes

# 04- GUARDAR LA BASE DE DATOS AJUSTADA
write.csv(vsex16, "bases/violencia_sex_2016.csv")

