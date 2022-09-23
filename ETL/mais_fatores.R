#Mais fatores

#install.packages("ade4")
#install.packages("arules")
#install.packages("forcats")

library(ade4)
library(dplyr)
library(arules)
library(forcats)

load(url('https://github.com/AnnaKarollinne/metdosavancados/blob/main/ETL/impeachment_dilma.rda?raw=true')
str(impeachment_dilma)

# conversão em fatores

for(i in 6:8) {
  impeachment_dilma[,i] <- as.factor(impeachment_dilma[,i]) } 

str(impeachment_dilma)

# filtro por tipo de dado

factorsimpeachment_dilma <- unlist(lapply(impeachment_dilma, is.factor))  
impeachment_dilmaFactor <- impeachment_dilma[ , factorsimpeachment_dilma]
str(impeachment_dilmaFactor)

# One Hot Encoding
impeachment_dilmaDummy <- acm.disjonctif(impeachment_dilmaFactor)

# forcats - usando tidyverse para fatores
fct_count(impeachment_dilmaFactor$partido) # conta os fatores

fct_anon(impeachment_dilmaFactor$partido) # anonimiza os fatores

fct_lump(impeachment_dilmaFactor$partido, n = 2) # reclassifica os fatores em mais comum e outros
