#Carregar dados
load(url("https://github.com/AnnaKarollinne/metdosavancados/blob/main/Calculando/impeachment_dilma.rda"))
#Calculando
mediaPT<- mean(impeachment_dilma$numeroPT)
mediaPT
CentralPT<- impeachment_dilma$numeroPT-mediaPT
CentralPT
