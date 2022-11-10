#Carregar dados
load(url("https://github.com/AnnaKarollinne/metdosavancados/blob/main/%C3%8Dndicexx/impeachment_dilma.rda?raw=true"))
#Index
impeachment_dilma$nomeOrador[10]
#usando a função which para localizar a posição de PMDB
which(impeachment_dilma$partido == "PMDB")
