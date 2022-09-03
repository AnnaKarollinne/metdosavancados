#Carregar dado
load("impeachment_dilma.rda")
#Calculando
mediaPT<- mean(impeachment_dilma$numeroPT)
mediaPT
CentralPT<- impeachment_dilma$numeroPT-mediaPT
CentralPT
