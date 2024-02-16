# 02- Exploracion de datos

# Calcular el promedio por periodo
promedio_periodo <- tapply(violencia_sex$tasa, violencia_sex$periodo, mean,na.rm = TRUE)

t=2011:2022
plot(t,promedio_periodo, las=1, type = "l")


