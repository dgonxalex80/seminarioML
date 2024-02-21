# 02-armado-base 2011-2022 

# # UNE LAS BASES GENERADAS DE 2019 2020 2021 2022

names(vsex13) = c("cdep","cmun","cindica", "nomind","contexto", "periodo",
                 "edadR", "casos", "poblacion","tasa", "casosh", "poblacionh", 
                 "tasah", "casosm", "poblacionm", "tasam") 

names(vsex14) = c("cdep","cmun","cindica", "nomind","contexto", "periodo",
                  "edadR", "casos", "poblacion","tasa", "casosh", "poblacionh", 
                  "tasah", "casosm", "poblacionm", "tasam") 

names(vsex15) = c("cdep","cmun","cindica", "nomind","contexto", "periodo",
                  "edadR", "casos", "poblacion","tasa", "casosh", "poblacionh", 
                  "tasah", "casosm", "poblacionm", "tasam") 

names(vsex16) = c("cdep","cmun","cindica", "nomind","contexto", "periodo",
                  "edadR", "casos", "poblacion","tasa", "casosh", "poblacionh", 
                  "tasah", "casosm", "poblacionm", "tasam") 

names(vsex17) = c("cdep","cmun","cindica", "nomind","contexto", "periodo",
                  "edadR", "casos", "poblacion","tasa", "casosh", "poblacionh", 
                  "tasah", "casosm", "poblacionm", "tasam") 

names(vsex18) = c("cdep","cmun","cindica", "nomind","contexto", "periodo",
                  "edadR", "casos", "poblacion","tasa", "casosh", "poblacionh", 
                  "tasah", "casosm", "poblacionm", "tasam") 

names(vsex19) = c("cdep","cmun","cindica", "nomind","contexto", "periodo",
                  "edadR", "casos", "poblacion","tasa", "casosh", "poblacionh", 
                  "tasah", "casosm", "poblacionm", "tasam") 

names(vsex20) = c("cdep","cmun","cindica", "nomind","contexto", "periodo",
                  "edadR", "casos", "poblacion","tasa", "casosh", "poblacionh", 
                  "tasah", "casosm", "poblacionm", "tasam") 

names(vsex21) = c("cdep","cmun","cindica", "nomind","contexto", "periodo",
                  "edadR", "casos", "poblacion","tasa", "casosh", "poblacionh", 
                  "tasah", "casosm", "poblacionm", "tasam") 

names(vsex22) = c("cdep","cmun","cindica", "nomind","contexto", "periodo",
                  "edadR", "casos", "poblacion","tasa", "casosh", "poblacionh", 
                  "tasah", "casosm", "poblacionm", "tasam") 




violencia_sex = rbind(vsex13,
                      vsex14,
                      vsex15,
                      vsex16,
                      vsex17,
                      vsex18,
                      vsex19,
                      vsex20,
                      vsex21,
                      vsex22) # sañle errpor

rm(variables, vsex_2013, vsex_2014, vsex_2015, 
   vsex_2016, vsex_2017, vsex_2018, vsex_2019, 
   vsex_2020, vsex_2021, vsex_2022)

rm(vsex13, vsex14, vsex15, vsex16, vsex17, 
   vsex18, vsex19, vsex20, vsex21, vsex22)

rm(Contexto, `Contexto del hecho`)

table(violencia_sex$edadR)

violencia_sex$edadR[violencia_sex$edadR == "Menores de 1 año"] = 1
violencia_sex$edadR[violencia_sex$edadR == "Menores de un año"] = 1
violencia_sex$edadR[violencia_sex$edadR == "(01 a 05)"] =2
violencia_sex$edadR[violencia_sex$edadR == "(06 a 11)"] =3
violencia_sex$edadR[violencia_sex$edadR == "(12 a 17)"] =4
violencia_sex$edadR[violencia_sex$edadR == "(18 a 28)"] =5

tedadR =table(violencia_sex$edadR)
names(tedadR) = c("menos 1", "1-5", "6-11", "12-17", "18-28")
tedadR
barplot(tedadR)
#---------------------------------------------------------------
library(ggplot2)

# Crear la tabla tedadR
tedadR <- table(violencia_sex$edadR)

# Asignar nombres a las categorías
names(tedadR) <- c("menos 1", "1-5", "6-11", "12-17", "18-28")

# Convertir la tabla a un data frame
df_tedadR <- as.data.frame(tedadR)

# Crear el gráfico de barras con ggplot2
ggplot(df_tedadR, aes(x = Var1, y = Freq)) +
  geom_bar(stat = "identity", fill = "steelblue") +
  labs(x = "Edad", y = "Frecuencia", title = "Distribución de Edades") +
  theme_minimal()



write.csv(violencia_sex, "bases/violencia_sex_2011_2022.csv")
saveRDS(violencia_sex, "bases/violencia_sex_2011_2022.RDS")

