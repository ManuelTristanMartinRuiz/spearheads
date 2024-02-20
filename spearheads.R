library(readxl)
#Ej.1
spear <- read_excel("C:/Users/manueltristan/Documents/spearheads/spearheads.xlsx")
View(spear)
str(spear)
class(spear)
#Para importar los datos del archivo excel utilizamos la función "read_excel" y la "url" de nuestro archivo Excel


spear <- as.data.frame(spear)
class(spear)
#Para convertur los datos a un data.frame, utilizamos la función "as.data.frame"

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
names(spear)[names(spear) == "Upsoc"] <- "Ancho_encaje"
names(spear)[names(spear) == "Mawit"] <- "Ancho_max_encaje"
names(spear)[names(spear) == "Weight"] <- "Peso"
spear
View(spear)
#Para renombrar utilizamos la función "names" y con la función lógica "==" compara con el data.frame y le asignamos nuevos nombres

#Ej.3
# Para este ejercicio con la operación lógica $, decimos que dentro del data.frame (Spear) seleccione la columna concreta y le decimos que sean factores, y le decimos que los factores 1,2 y 3 los convierta en unos factores determinados
spear$Contexto=factor(spear$Contexto, levels=c('1','2','3'), labels=c("s/c", "Habitacional", "Funerario"))
spear$Conservacion=factor(spear$Conservacion, levels=c(1,2,3,4), labels=c('Excelente', 'Bueno', 'Regular', 'Malo'))
spear$Remache=factor(spear$Remache, levels=c(1,2), labels=c('Si', 'No'))
spear$Materiales=factor(spear$Materiales, levels=c(1,2), labels=c('Bronce', 'Hierro'))
View(spear)

#Ej.4
freq.mat=table(spear$Materiales)
View(freq.mat)
freq.con=table(spear$Contexto)
View(freq.con)
freq.cond=table(spear$Conservacion)
View(freq.cond)
#En este ejercicio empleamos la función "table" para generar una tabla con los datos de nuesto data.set "spear" y con la función "$" seleccionamos solamente aquellos datos que queremos.

#Ej.5
materiales_contexto <- table(spear$Materiales, spear$Contexto)
View(materiales_contexto)
materiales_conservacion <-table(spear$Materiales, spear$Conservacion)
View(materiales_conservacion)
#En este ejercicio empleamos la misma función "table" que en el anterior para generar una tabla de datos, pero ahora incluimos dos columnas de datos mediante la función "$" en vez de solo una. 

#Ej.6
procentaje_materiales <- prop.table(table(spear$Materiales)) * 100
View(procentaje_materiales)
procentaje_contexto <- prop.table(table(spear$Contexto)) * 100
View(procentaje_contexto)
procentaje_conservacion <- prop.table(table(spear$Conservacion)) * 100
View(procentaje_conservacion)
#Para este ejercicio empleamos la función "prop.table", seleccionando los datos mediante la función "$", y multiplicando por *100 para que aparezca el porcentaje. 

#Ej.7
porcentaje_materiales_contexto <- prop.table(table(spear$Materiales, spear$Contexto), margin = 1) * 100
View(porcentaje_materiales_contexto)
porcentaje_materiales_conservacion <- prop.table(table(spear$Materiales, spear$Conservacion), margin = 1) * 100
View(porcentaje_materiales_conservacion)
#En este ejercicio tambíen empleamos la función "prop.table" para hacer una tabla en porcentaje, incluyendo dos columnas de datos mediante el uso de la función "$". La función "margin" sirve para especificar la dimensión en la que queremos hacer el calculo. Margin = 1 significa que el porcentaje se calcule por filas.

#Ej.8
barras_verticales_conservacion <- barplot(table(spear$Conservacion), main = "Frecuencia de Conservación", 
                                          xlab = "Conservación")
barras_verticales_contexto <- barplot(table(spear$Contexto), main = "Frecuencia de Contexto", 
        xlab = "Contexto")
#Para elaborar los graficos de barras verticales utilizamos la función "barplot", seleccionando los datos concretos de nuestro data.set.

#Ej.9
barras_horizontales_materiales <- barplot(table(spear$Materiales), horiz = TRUE, main = "Frecuencia de Materiales", ylab = "Materiales")
barras_horizontales_remache <- barplot(table(spear$Remache), horiz = TRUE, main = "Frecuencia de Remache", ylab = "Remache")
#Para elaborar estos graficos utilizamos la misma función que en Ej.8 pero añadimos la función "horiz" = True para que los haga horizontales.

#Ej.10
barras_material_conservacion <- barplot(porcentaje_materiales_conservacion, beside = TRUE, legend = TRUE, main = "Conservación por Material", xlab = "Conservación", col = c("lightblue", "blue"))
#En este caso empleamos la misma función de "barplot", seleccionamos los dos datos que queremos agrupar, e incluimos una leyenda con los valores que les hemos dado a las diferentes categorías de conservación

#Ej.11
sectores_conservacion <- pie(table(spear$Conservacion), main = "Porcentaje de Conservación")
#En este caso para generar un grafico de sectores usamos la función "pie", con los datos de conservación. 

#Ej.12 
hist(spear$Longitud_max, prob = TRUE, main = "Histograma de Probabilidad de Longitud Max", xlab = "Longitud Max")
hist(spear$Ancho_max, prob = TRUE, main = "Histograma de Probabilidad de Ancho Max", xlab = "Ancho Max")
#En el último ejercicio empleamos la función "hist" para generar un histiograma, con dos variables continuas como es el ancho maximo y la longitud máxima que son variables continuas. 

