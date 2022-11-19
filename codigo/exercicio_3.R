# Instalando biblioteca readxl para importar para o R arquivos com extensão .xls ou .xlsx.
if (!("readxl") %in% installed.packages()) install.packages("readxl")

# Carregando a biblioteca
library(readxl)

# Importando o arquivo do exercício 3

df.ex3 <- read_excel("./dados/exercicio3.xlsx")
(df.ex3)

# calculando a media
ex3.media <- mean(df.ex3$n_filhos)
print(paste("Média do número de filhos:", ex3.media))

# calculando a mediana
ex3.mediana = median(df.ex3$n_filhos)
print(paste("Médiana do número de filhos:", ex3.mediana))


