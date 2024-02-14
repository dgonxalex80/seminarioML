# IMPORTAR BASE INDICADORES DE VIOLENCIA SEX 2015
# 01- IMPORTAR DATOS 
library(readxl)


violencia_sex_2015 <- read_excel("data/Indicadores Procuraduría 2015.xlsx", 
                                  sheet = "Ind. Violencia Sexual", 
                                 range = "B9:AJ224")


nvs15=names(violencia_sex_2015)

# 02-   CAMBIO NOMBRE DE VARIABLES
 names(violencia_sex_2015)=c("cdep","cmun","cindica", "nomind","contexto", "periodo",
                             "edadR", "casos", "poblacion","tasa", "casosh", "poblacionh", 
                             "tasah", "casosm", "poblacionm", "tasam", "casosNA", 
                             "poblacionNA", "tasaNA",   "rural", "urbana",  "sininfor", 
                             "desplazados", "otros", "discapacitados",    "nodiscapacitados", 
                             "discapacitadoNA", "indigena", "negro", "palenquero", 
                             "raizal",  "ROM", "Sinetnica", "Sininformación", "TOTAL", "tipo") 

 # VALIDACION DE VARIABLES
 V2015 = names(violencia_sex_2015)
 
 
 # 03- SELECCION DE VARIABLES 
 vsex15 <- violencia_sex_2015
 str(vsex15)
 
 
 # 04- TRATAMIENTO DE DATOS FALTANTES
 faltantes <- colSums(is.na(vsex15))
 faltantes <- as.data.frame(faltantes) 
 faltantes
 
 summary(vsex15)
 table(vsex15$cdep)
 
 # install.packages("naniar")
 library(naniar)
 gg_miss_var(vsex15) # gráfico de datos faltantes
 
 
 
 # install.packages("naniar")
 library(naniar)
 gg_miss_var(vsex15) # grafico de datos faltantes
 vsex15 <- vsex15[1:2247,]
 
 
 # install.packages("naniar")
 library(naniar)
 vsex15SINA <- na.omit(vsex15)  # elimina todos los valores con  NA
 gg_miss_var(vsex15SINA) # gráfico de datos faltantes
 
# 04- GUARDAR LA BASE DE DATOS AJUSTADA
 write.csv(vsex15, "bases/violencia_sex_2015.csv")
# 
