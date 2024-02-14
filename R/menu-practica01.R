
# Ejecuta 01-practica1-2019.R
source("R/01-practica1-2019.R")



# Ejecuta 01-practica1-2020.R
source("R/01-practica1-2020.R")

# Ejecuta 01-practica1-2021.R
source("R/01-practica1-2021.R")

# Ejecuta 01-practica1-2022.R
source("R/01-practica1-2022.R")


#

nombre = data.frame( 
                   vsex22 = names(violencia_sex_2022),
                   vsex21 = names(violencia_sex_2021),
                   vsex20 = names(violencia_sex_2020),
                   vsex19 = names(violencia_sex_2019),
                   vsex18 = names(violencia_sex_2018),
                   vsex17 = names(violencia_sex_2017),
                   vsex16 = names(violencia_sex_2016)
                   )
# 
# # UNE LAS BASES GENERADAS DE 2019 2020 2021 2022
# 
 violencia_sex = rbind(violencia_sex_2019,
                       violencia_sex_2020,
                       violencia_sex_2021,
                       violencia_sex_2022) # sañle errpor
# 

rm(vsex19, vsex20, vsex21, vsex22,
   vsex19SINA, vsex20SINA, vsex21SINA, vsex22SINA) 
rm(nvs19, nvs20, nvs21, nvs22) 
 rm(V2019,V2020,V2021,V2022)
 rm(faltantes)
 # 
# # 04- SE GUARDA LA BASE TRATADA
# write.csv(violencia_sex, "data/violencia_sex.csv")
# 
# 
