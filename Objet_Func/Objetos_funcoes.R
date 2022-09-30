#O vetor abaixo refere-se as nacionalidades dos migrantes oriundos de tres países:
migrante<- c("venezuela", "haiti","ucrania")
migrante
#Carregar dados
load(url("https://github.com/AnnaKarollinne/metdosavancados/blob/main/Calculando/impeachment_dilma.rda?raw=true"))
#RegressÃ£o Linear
impeachment_dilma
regWord<- lm(impeachment_dilma$numeroPalavras~impeachment_dilma$numeroCaracteres)
regWord
#Complexidade dos Objetos
str(migrante)
str(regWord)

