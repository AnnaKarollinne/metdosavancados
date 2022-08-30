#O vetor abaixo refere-se as nacionalidades dos migrantes oriundos de três países:
migrante<- c("venezuela", "haiti","ucrania")

#Regressão Linear
regWord<- lm(impeachment_dilma$numeroPalavras~impeachment_dilma$numeroCaracteres)

#Complexidade dos Objetos
str(migrante)
str(regWord)

