
# # 02- SELECCION DE VARIABLES 

vsex22 <- vsex_2022[, 1:16]
vsex21 <- vsex_2021[, 1:16]
vsex20 <- vsex_2020[, 1:16]
vsex19 <- vsex_2019[, 1:16]
vsex18 <- vsex_2018[, 1:16]
#------------------------------------
# Quitar variable - espacio en blanco
vsex17 <- vsex_2017[, 1:17]
vsex16 <- vsex_2016[, 1:17]

library(dplyr) # -------------------
vsex16 <- vsex16 %>%
            select(-11)


vsex17 <- vsex17 %>%
  select(-11)

#------------------------------------
# Adicionar variable faltante como NA 
vsex15 <- vsex_2015[, 1:15]
vsex14 <- vsex_2014[, 1:15]
vsex13 <- vsex_2013[, 1:15]

vsex15 <- vsex15 %>%
  mutate_at(5, ~ NA)












