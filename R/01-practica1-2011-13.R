# IMPORTAR BASE INDICADORES DE VIOLENCIA SEX 2011-2013

# 01- IMPORTAR DATOS 
library(readxl)

violencia_sex_2013 <- read_excel("data/indicadores de Infancia, adolescencia y juventud2011-2013.xlsx", 
                                  sheet = "BATERIA IND. VIOLENCIA SEXUAL", 
                                  range = "A1:AD16201")

nvs13=names(violencia_sex_2013)

nvs13=names(violencia_sex_2013)
# 02-   CAMBIO NOMBRE DE VARIABLES
# names(violencia_sex_2013)=c("cdep","cmun","cindica", "nomind","contexto", "periodo",
#                             "edadR", "casos", "poblacion","tasa", "casosh", "poblacionh", 
#                             "tasah", "casosm", "poblacionm", "tasam", "casosNA", 
#                             "poblacionNA", "tasaNA",   "rural", "urbana",  "sininfor", 
#                             "desplazados", "otros", "discapacitados",    "nodiscapacitados", 
#                             "discapacitadoNA", "indigena", "negro", "palenquero", 
#                             "raizal",  "ROM", "Sinetnica", "Sininformación", "TOTAL", "tipo") 
# 
# 
# # 03- SELECCION DE VARIABLES 
# vsex21 <- violencia_sex_2021[, c(1,2,3,4:8,11,12,14,15, 17:34)]
# str(vsex21)
# 
# 
# # 04- TRATAMIENTO DE DATOS FALTANTES
# faltantes <- colSums(is.na(vsex21))
# faltantes <- as.data.frame(faltantes) 
# faltantes
# 
# summary(vsex21)
# table(vsex21$cdep)
# 
# # install.packages("naniar")
# library(naniar)
# gg_miss_var(vsex21) # gráfico de datos faltantes
# 
# 
# 
# # install.packages("naniar")
# library(naniar)
# gg_miss_var(vsex21) # grafico de datos faltantes
# vsex21 <- vsex21[1:2454,]
# 
# 
# # install.packages("naniar")
# library(naniar)
# vsex21SINA <- na.omit(vsex21)  # elimina todos los valores con  NA
# gg_miss_var(vsex21SINA) # gráfico de datos faltantes
# 
# # 04- GUARDAR LA BASE DE DATOS AJUSTADA
# write.csv(vsex21, "base/violencia_sex_2021.csv")
# 
