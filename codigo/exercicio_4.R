# Instalando biblioteca readxl para importar para o R arquivos com extensão .xls ou .xlsx.
if (!("readxl") %in% installed.packages()) install.packages("readxl")

# Carregando a biblioteca
library(readxl)

# Importando o arquivo do exercício 4
df.ex4 <- read_excel("./dados/exercicio4.xls",skip = 1, col_names = "Salários", col_types = c("numeric"))
#view(df.ex4)
# calculando a media
ex4.media <- mean(df.ex4$Salários)
print(paste("Média dos salários:", ex4.media))

# calculando a mediana
ex4.mediana = median(df.ex4$Salários)
print(paste("Médiana dos salários:", ex4.mediana))

# calculando a frequência

# histograma

