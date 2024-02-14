install.package("readxl")
library(readxl)
file.choose("C:/Users/manueltristan/Documents/spearheads/spearheads.xlsx")
ruta_excel <-"C:/Users/manueltristan/Documents/spearheads/spearheads.xlsx"
excel_sheets(ruta_excel)
read_excel(ruta_excel)

spear <- as.data.frame(ruta_excel)
print(spear)
View(spear)

f