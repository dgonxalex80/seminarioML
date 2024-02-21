# 03 - EXPLORACICON DE RESULTADOS
violencia_sex<- readRDS("bases/violencia_sex_2011_2022.RDS")



# Calcular el total por periodo -----------------------------
proper <- tapply(violencia_sex$tasa, violencia_sex$periodo, sum,na.rm = TRUE)

t=2011:2022
plot(t,proper, las=1, type = "l")
#---------------------------------------------------------------

# Calcular el total por periodo -----------------------------
proper_h <- tapply(violencia_sex$tasah, violencia_sex$periodo, sum,na.rm = TRUE)
proper_m <- tapply(violencia_sex$tasah, violencia_sex$periodo, sum,na.rm = TRUE)





# Calcular la suma por periodo y por departamento --------------
suma_periodo_departamento <- tapply(violencia_sex$casos, 
                                    list(violencia_sex$periodo, violencia_sex$cdep), 
                                    sum, na.rm = TRUE)

heatmap(suma_periodo_departamento, 
        Rowv=NA, Colv=NA, 
        col=heat.colors(256), 
        scale="column",
        margins=c(5,10))
#---------------------------------------------------------------
