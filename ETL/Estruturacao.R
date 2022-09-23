#long linha
#wide coluna
#install.packages("tidyverse")
library(data.table)
library(dplyr)
library(tidyverse)

general_data <- fread("https://raw.githubusercontent.com/owid/monkeypox/main/owid-monkeypox-data.csv")

latin_america_countries<-c("Argentina", "Brazil", "Bolivia", "Chile", "Colombia", "Costa Rica", "Cuba", "Dominican Republic", "Ecuador", "El Salvador", "Guatemala", "Haiti", "Honduras", "Mexico", "Nicaragua", "Panama", "Paraguay", "Peru", "Uruguay", "Venezuela") # vetor que identifica países latino americanos

latin_america<- general_data %>% filter(location %in% latin_america_countries) # filtra casos apenas no vetor

mlatin <- latin_america %>% group_by(location) %>% mutate(row = row_number()) %>% select(location, total_cases, row) # cria matriz dos países, agrupando por local, criando uma nova linha com index e selecionando apenas algumas variáveis
#garantir a mesma quantidade de casos
result <- mlatin %>% group_by(location) %>% filter(row == max(row))
mlatin <- mlatin %>% filter(row<=min(result$row))
# pivota o data frame de long para wide
mlatinw <- mlatin %>% pivot_wider(names_from = row, values_from = total_cases) %>% remove_rownames %>% column_to_rownames(var="location") 

