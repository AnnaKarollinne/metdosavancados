#Mais fatores

#install.packages("ade4")
#install.packages("arules")
#install.packages("forcats")

library(ade4)
library(dplyr)
library(arules)
library(forcats)
impeachment_dilma<- fread('https://github.com/AnnaKarollinne/metdosavancados/blob/main/ETL/impeachment_dilma.rda')
load(file = "impeachment_dilma.rda")

# Sumário
count(impeachment_dilma,partido)
impeachment_dilma$uf

#Sumário com agrupamento
#dividir em grupos por partido
grupo <- group_by(impeachment_dilma,partido)

#mostra a média por partido
summarise(grupo,avg =  mean(numeroPalavras))

#transformação de casos
#filtra para pegar todos menos pt
filtro = filter(impeachment_dilma,partido != "pt")
#calcula a média
summarise(filtro,avg = mean(numeroPalavras))

#agrupa
grupo <- group_by(filtro,uf,partido)
summarise(grupo,avg = mean(numeroPalavras))

#ordenar
arrange(impeachment_dilma,numeroPalavras)

#Novas colunas
mutate(impeachment_dilma,numeroCaracteres/numeroPalavras)
