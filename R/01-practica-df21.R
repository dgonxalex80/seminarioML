library(readxl)

violencia_sex_2021 <-read_excel("data/Indicadores_Infancia_adolescencia_juventud_2021.xlsx", 
                                sheet = "Ind. Violencia Sexual", 
                                range = "B9:AJ2548")


variables = names(violencia_sex_2021)

names(violencia_sex_2021)=c("cdep","cmun","indicador", "nomind","contexto", "periodo",
                            "edadR", "casos", "poblacion","tasa", "casosh", "poblacionh", 
                            "tasah", "casosm", "poblacionm", "tasam", "casosNA", 
                            "poblacionNA", "tasaNA",   "rural", "urbana",  "sininfor", 
                            "desplazados", "otros", "discapacitados",    "nodiscapacitados", 
                            "discapacitado.Sininformacion", "indigena", "negro", "palenquero", 
                            "raizal",  "ROM", "Sinetnica", "Sininformación", "TOTAL", "tipo") 



vsex21 <- violencia_sex_2021[, c(1,2,4:8,11,12,14,15, 17:34)]
str(vsex21)

faltantes <- colSums(is.na(vsex21))
faltantes <- as.data.frame(faltantes) 
faltantes

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


write.csv(vsex21, "data/violencia_sex_2021.csv")