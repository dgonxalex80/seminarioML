# IMPORTAR BASE INDICADORES DE VIOLENCIA SEX 2014

# 01- IMPORTAR DATOS 
library(readxl)

violencia_sex_2014 <- read_excel("data/indicadores de Infancia, adolescencia y juventud 2014.xlsx", 
                                  sheet = "BATERIA VIOLENCIA SEXUAL 2014", 
                                  range = "A1:AE2203")
  
nvs14=names(violencia_sex_2014)  

nombres15 = names(violencia_sex_2014)

nvs15=names(violencia_sex_2014)
# 02-   CAMBIO NOMBRE DE VARIABLES
 names(violencia_sex_2014)=c("cdep","cmun","cindica", "nomind","contexto", "periodo",
                             "edadR", "casos", "poblacion","tasa", "casosh", "poblacionh", 
                             "tasah", "casosm", "poblacionm", "tasam", "casosNA", 
                             "poblacionNA", "tasaNA",   "rural", "urbana",  "sininfor", 
                             "desplazados", "otros", "discapacitados",    "nodiscapacitados", 
                             "discapacitadoNA", "indigena", "negro", "palenquero", 
                             "raizal",  "ROM", "Sinetnica", "Sininformación", "TOTAL", "tipo") 
# 
 # 03- SELECCION DE VARIABLES 
 vsex15 <- violencia_sex_2014
 #str(vsex14)
 
 
 # 04- TRATAMIENTO DE DATOS FALTANTES
 faltantes <- colSums(is.na(vsex14))
 faltantes <- as.data.frame(faltantes) 
 faltantes
 
 summary(vsex14)
 table(vsex14$cdep)
 
 # install.packages("naniar")
 library(naniar)
 gg_miss_var(vsex14) # gráfico de datos faltantes
 
 
 
 # install.packages("naniar")
 library(naniar)
 gg_miss_var(vsex141) # grafico de datos faltantes
 vsex14 <- vsex14[1:2203,]
 
 
 # install.packages("naniar")
 library(naniar)
 vsex14SINA <- na.omit(vsex14)  # elimina todos los valores con  NA
 gg_miss_var(vsex14SINA) # gráfico de datos faltantes
 
 # 04- GUARDAR LA BASE DE DATOS AJUSTADA
 write.csv(vsex14, "base/violencia_sex_2014.csv")
 
