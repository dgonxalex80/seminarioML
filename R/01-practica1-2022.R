# IMPORTAR BASE INDICADORES DE VIOLENCIA SEX 2021
# 01- IMPORTAR DATOS 

library(readxl) # paquete para leer libros de excel
violencia_sex_2022 <- read_excel("data/Indicadores_infancia_adolescencia_juventud_Procuraduria_2022.xlsx", 
                                 sheet = "Ind. Violencia Sexual", 
                                 range = "B9:AJ2548")


nvs22=names(violencia_sex_2022)
# 02- CAMBIO NOMBRE DE VARIABLES
names(violencia_sex_2022)=c("cdep","cmun","cindica", "nomind","contexto", "periodo",
                            "edadR", "casos", "poblacion","tasa", "casosh", "poblacionh", 
                            "tasah", "casosm", "poblacionm", "tasam", "casosNA", 
                            "poblacionNA", "tasaNA",   "rural", "urbana",  "sininfor", 
                            "desplazados", "otros", "discapacitados",    "nodiscapacitados", 
                            "discapacitadoNA", "indigena", "negro", "palenquero", 
                            "raizal",  "ROM", "Sinetnica", "Sininformación", "TOTAL", "tipo") 



# 03- SELECCION DE VARIABLES
vsex22 <- violencia_sex_2022
str(vsex22)


#04- TRATAMIENTO DATOS FALTANTES
faltantes <- colSums(is.na(vsex22))
faltantes <- as.data.frame(faltantes) 
faltantes

summary(vsex22)
table(vsex22$cdep)

# install.packages("naniar")
library(naniar)
gg_miss_var(vsex22) # gráfico de datos faltantes



# install.packages("naniar")
library(naniar)
gg_miss_var(vsex22) # grafico de datos faltantes
vsex22 <- vsex22[1:2454,]


# install.packages("naniar")
library(naniar)
vsex22SINA <- na.omit(vsex22)  # elimina todos los valores con  NA
gg_miss_var(vsex22SINA) # gráfico de datos faltantes

# 04- SE GUARDA LA BASE TRATADA
write.csv(vsex22, "bases/violencia_sex_2022.csv")

