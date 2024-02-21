# 03 - EXPLORACICON DE RESULTADOS
violencia_sex<- readRDS("bases/violencia_sex_2011_2022.RDS")

# tipo de variables

violencia_sex$periodo <- as.factor(violencia_sex$periodo)
violencia_sex$edadR <- as.factor(violencia_sex$edadR)

violencia_sex$casos <- as.integer(violencia_sex$casos)
violencia_sex$casosh <- as.integer(violencia_sex$casosh)
violencia_sex$casosm <- as.integer(violencia_sex$casosm)

violencia_sex$poblacion <- as.integer(violencia_sex$poblacion)
violencia_sex$poblacionh <- as.integer(violencia_sex$poblacionh)
violencia_sex$poblacionm <- as.integer(violencia_sex$poblacionm)

tasaT= violencia_sex$casos/violencia_sex$poblacion*100000


violencia_sex$tasa <- as.integer(violencia_sex$tasa)
violencia_sex$tasah <- as.integer(violencia_sex$tasah)
violencia_sex$tasam <- as.integer(violencia_sex$tasam)

total = data.frame(violencia_sex$casos, violencia_sex$poblacion, tasaT, violencia_sex$tasa)

summary(total)





write.csv(violencia_sex, "bases/violencia_sex_2011_2022.csv")
saveRDS(violencia_sex, "bases/violencia_sex_2011_2022.RDS")
