#O vetor abaixo refere-se as nacionalidades dos migrantes oriundos de tres países:
migrante<- c("venezuela", "haiti","ucrania")
migrante
#Carregar dados
load("impeachment_dilma.rda")
#RegressÃ£o Linear
impeachment_dilma
regWord<- lm(impeachment_dilma$numeroPalavras~impeachment_dilma$numeroCaracteres)
regWord
#Complexidade dos Objetos
str(migrante)
str(regWord)

