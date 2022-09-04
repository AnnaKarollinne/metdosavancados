#Principais fontes para extração

#.data ou .txt - tabela
cancer_de_mama <- read.table("https://archive.ics.uci.edu/ml/machine-learning-databases/breast-cancer/breast-cancer.data", header = FALSE, sep = ',', dec = '.')

#JSON
empresasMetadados <- fromJSON(file= "http://dados.recife.pe.gov.br/dataset/eb9b8a72-6e51-4da2-bc2b-9d83e1f198b9/resource/b4c77553-4d25-4e3a-adb2-b225813a02f1/download/empresas-da-cidade-do-recife-atividades.json" )
empresasMetadados <- as.data.frame(empresasMetadados)

#CSV
sinistrosRecife2019Raw <- read.csv2('http://dados.recife.pe.gov.br/dataset/44087d2d-73b5-4ab3-9bd8-78da7436eed1/resource/3531bafe-d47d-415e-b154-a881081ac76c/download/acidentes-2019.csv', sep = ';', encoding = 'UTF-8')

