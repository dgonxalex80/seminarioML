# Ya con  df21  y df20 las unimos
# # Combina los data frames permitiendo columnas faltantes
df_vsex <- rbind.fill(violencia_sex_2021, 
                      violencia_sex_2020)
                  
table(df_vsex$`Periodo del Indicador`)


#  