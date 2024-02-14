library(readxl)
#Ej.1
spear <- read_excel("C:/Users/manueltristan/Documents/spearheads/spearheads.xlsx")
View(spear)
str(spear)
class(spear)

#Para importar los datos del archivo excel utilizamos la función "read_excel" y la "url" de nuestro archivo Excel


spear <- as.data.frame(spear)
class(spear)


#Ej.2
names(spear)[names(spear) == "Mat"] <- "Materiales"
names(spear)[names(spear) == "Con"] <- "Contexto"
names(spear)[names(spear) == "Cond"] <- "Conservacion"
names(spear)[names(spear) == "Loo"] <- "Loop"
names(spear)[names(spear) == "Peg"] <- "Remache"
names(spear)[names(spear) == "Date"] <- "Fecha"
names(spear)[names(spear) == "Maxle"] <- "Longitud_max"
names(spear)[names(spear) == "Socle"] <- "Longitud_encaje"
names(spear)[names(spear) == "Maxwi"] <- "Ancho_max"
spear
View(spear)
