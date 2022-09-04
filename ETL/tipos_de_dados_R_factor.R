gender <- c(83, 81, 91, 92, 93, 94, 95)
recode <- c(Paraíba = 83, Pernambuco = 81,Pará = 91, Amazonas = 92)
(gender <- factor(gender, levels = recode, labels = names(recode)))

(gender <- relevel(gender, ref = "Pernambuco"))
