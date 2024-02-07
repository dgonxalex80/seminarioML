# Importar datos 1 
library(readxl)
# desde archivo en nuestro equipo en la carpeta data
library(readxl) # paquete para leer libros de excel
patologia_2020 <- read_excel("data/Indicadores infancia adolescencia y juventud Procuraduria 2020.xlsx",
                             sheet = "Ind. Patología", 
                             range = "B9:AJ3978")

# importar datos 1
# install.packages("RSocrata")
library(RSocrata)
token ="ew2rEMuESuzWPqMkyPfOSGJgE"
Colombia= read.socrata("https://www.datos.gov.co/resource/gt2j-8ykr.json", app_token = token)
saveRDS(Colombia,"data/Colombia.RDS")


# importar datos 
install.packages("MortalityTables")
library(MortalityTables)
data("PopulationData.AT2017")
