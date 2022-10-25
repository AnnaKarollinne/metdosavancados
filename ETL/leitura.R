#RESPOSTA:
#O codigo nativo R possui uma menor media de tempo para leitura e uma maior media para exportação.
#Já o plano com interoperatividade pode ser lido/ operacionalizado em diversas outras linguagens (python,por exemplo)

#install.packages("microbenchmark")
pacman::p_load(microbenchmark)

sinistrosRecifeRaw <- read.csv2('http://dados.recife.pe.gov.br/dataset/44087d2d-73b5-4ab3-9bd8-78da7436eed1/resource/3531bafe-d47d-415e-b154-a881081ac76c/download/acidentes-2019.csv', sep = ';', encoding = 'UTF-8')


# exporta em formato nativo do R
saveRDS(sinistrosRecifeRaw, "sinistrosRecife.rds")

# exporta em formato tabular (.csv) - padrão para interoperabilidade
write.csv2(sinistrosRecifeRaw, "sinistrosRecife.csv")

# exporta em formato rda (.rda)
save(sinistrosRecifeRaw,file = 'sinistrosRecife.rda')

# carrega base de dados em formato nativo R
sinistrosRecife <- load(file='sinistrosRecife.rds')

# carrega base de dados em formato tabular (.csv) - padrão para interoperabilidade
sinistrosRecife <- read.csv2('sinistrosRecife.csv', sep = ';')

# carrega base de dados em formato nativo R
load(file = 'sinistrosRecife.rda')
# compara os dois processos de exportação, usando a função microbenchmark

microbenchmark(a <- saveRDS(sinistrosRecifeRaw, "sinistrosRecife.rds"), b <- write.csv2(sinistrosRecifeRaw, "sinistrosRecife.csv"), times = 30L)

microbenchmark(a <- readRDS('sinistrosRecife.rds'), b <- read.csv2('sinistrosRecife.csv', sep = ';'),c <- save(sinistrosRecifeRaw,file = 'sinistrosRecife.rda'), times = 10L)

microbenchmark(a <- save(sinistrosRecife,file = 'sinistrosRecife.rda'), b <- load(file = 'sinistrosRecife.rda'),c <- sinistrosRecife <- load(file = 'sinistrosRecife.rda'),  times = 10L)

