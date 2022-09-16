#Carregar dados
impeachment_dilma<- fread('https://github.com/AnnaKarollinne/metdosavancados/blob/main/ETL/impeachment_dilma.rda')
load("impeachment_dilma.rda")
#Index
impeachment_dilma$nomeOrador[10]
#ou em caso de busca no console
index<- scan()
impeachment_dilma$nomeOrador[index]
