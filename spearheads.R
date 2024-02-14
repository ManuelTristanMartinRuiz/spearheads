library(readxl)
#Ej.1
spear <- read_excel("C:/Users/manueltristan/Documents/spearheads/spearheads.xlsx")
View(spear)
str(spear)
class(spear)

spear <- as.data.frame(spear)
class(spear)

#Ej.2
names(spear)[names(spear) == "Mat"] <- "Materiales"
names(spear)[names(spear) == "Con"] <- "Contexto"
names(spear)[names(spear) == "Cond"] <- "Conservacion"
names(spear)[names(spear) == "Peg"] <- "Remache"
names(spear)[names(spear) == "Maxle"] <- "Longitud_max"
spear
View(spear)
