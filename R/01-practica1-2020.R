# IMPORTAR BASE INDICADORES DE VIOLENCIA SEX 2020

# 01- IMPORTAR DATOS 
library(readxl) # paquete para leer libros de excel
violencia_sex_2020 <- read_excel("data/Indicadores infancia adolescencia y juventud Procuraduria 2020.xlsx", 
                                 sheet = "Ind. Violencia Sexual",
                                 range = "B9:AJ2237")
nvs20=names(violencia_sex_2020)
# 02-CAMBIO NOMBRE VARIABLES             
names(violencia_sex_2020)=c("cdep","cmun","cindica", "nomind","contexto", "periodo",
                            "edadR", "casos", "poblacion","tasa", "casosh", "poblacionh", 
                            "tasah", "casosm", "poblacionm", "tasam", "casosNA", 
                            "poblacionNA", "tasaNA",   "rural", "urbana",  "sininfor", 
                            "desplazados", "otros", "discapacitados",    "nodiscapacitados", 
                            "discapacitadoNA", "indigena", "negro", "palenquero", 
                            "raizal",  "ROM", "Sinetnica", "Sininformación", "TOTAL", "tipo") 

# 03 - SELECCION DE VARIABLES
vsex20 <- violencia_sex_2020
str(vsex20)

# 04- TRATAMIENTO DE DATOS FALTANTES
faltantes <- colSums(is.na(vsex20))
faltantes <- as.data.frame(faltantes) 
faltantes

summary(vsex20)
table(vsex20$cdep)

# install.packages("naniar")
library(naniar)
gg_miss_var(vsex20) # gráfico de datos faltantes



# install.packages("naniar")
library(naniar)
gg_miss_var(vsex20) # grafico de datos faltantes
vsex20 <- vsex20[1:2454,]


# install.packages("naniar")
library(naniar)
vsex20SINA <- na.omit(vsex20)  # elimina todos los valores con  NA
gg_miss_var(vsex20SINA) # gráfico de datos faltantes


# 04- SE GUARDA LA BASE AJUSTADA
write.csv(vsex20, "bases/violencia_sex_2020.csv")

