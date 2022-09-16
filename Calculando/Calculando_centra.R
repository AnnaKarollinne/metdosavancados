#Carregar dados
impeachment_dilma<-fread("https://github.com/AnnaKarollinne/metdosavancados/blob/main/Calculando/impeachment_dilma.rda")
load("impeachment_dilma.rda")
#Calculando
mediaPT<- mean(impeachment_dilma$numeroPT)
mediaPT
CentralPT<- impeachment_dilma$numeroPT-mediaPT
CentralPT
