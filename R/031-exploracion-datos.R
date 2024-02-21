# 03 - EXPLORACICON DE RESULTADOS
vsex<- readRDS("bases/violencia_sex_2011_2022.RDS")

# exploracion de la data ----------------------------------

table(vsex$periodo)

vsexper <- tapply(vsex$tasa, vsex$periodo, sum,na.rm = TRUE)
vsexper

vsexperh <- tapply(vsex$tasah, vsex$periodo, sum,na.rm = TRUE)
vsexperh

vsexperm <- tapply(vsex$tasam, vsex$periodo, sum,na.rm = TRUE)
vsexperm

tabla1 =rbind(vsexperh, vsexperm)
tabla1 

barplot(tabla1)

# --------------------------------------------------------------


t20=table(vsex$edad)
names(t20) =c("(-1)","(1 a 5)", "(6 a 11)", "(12 a 17)", "(18 a 28)")
t20

vsexedad <- tapply(vsex$tasa, vsex$edadR, sum,na.rm = TRUE)
vsexedad

vsexedadh <- tapply(vsex$tasah, vsex$edadR, sum,na.rm = TRUE)
vsexedadh

vsexedadm <- tapply(vsex$tasam, vsex$edadR, sum,na.rm = TRUE)
vsexperm

tabla21 =rbind(vsexedadh, vsexedadm)

barplot(tabla21, las=1, ylim =c(0,4000000),
        names.arg = c("(-1)","(1 a 5)", "(6 a 11)", "(12 a 17)", "(18 a 28)"))

# --------------------------------------------------------------
table(vsex$cindica)  ## ??
table(vsex$nomind,vsex$cindica)
# --------------------------------------------------------------
# departamento
vsexdep <- tapply(vsex$tasa, vsex$cdep, sum,na.rm = TRUE)
vsexdep

vsexdeph <- tapply(vsex$tasah, vsex$cdep, sum,na.rm = TRUE)
vsexdeph

vsexdepm <- tapply(vsex$tasam, vsex$cdep, sum,na.rm = TRUE)
vsexdepm

tabla40 =rbind(vsexdeph, vsexdepm)
tabla40 

barplot(tabla40)

# ----------

