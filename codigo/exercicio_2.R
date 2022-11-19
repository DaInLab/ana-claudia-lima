# Instalando biblioteca readxl para importar para o R arquivos com extensão .xls ou .xlsx.
if (!("readxl") %in% installed.packages()) install.packages("readxl")

# Carregando a biblioteca
library(readxl)

# Importando dados do exercício 2
df.ex2 <- read_excel("./dados/exercicio2.xls",skip = 1, col_names = "Casas", col_types = c("numeric"))
df.ex2
class(df.ex2)
dim(df.ex2)

# a) Construir uma tabela de frequências;
# transformando os dados em vetor
ex2.em.vetor <- c(df.ex2$Casas)

# criando a tabela de frequência
ex2.tabela <-table(ex2.em.vetor)

# imprimindo a tabela de frequência
ex2.tabela
table(df.ex2)

# b) Calculando as medidas de posição e as medidas de dispersão

# calculando a media
ex2.media <- mean(df.ex2$Casas)
print(paste("Média das Casas:", ex2.media))

# calculando a mediana
ex2.mediana = median(df.ex2$Casas)
print(paste("Médiana das Casas:", ex2.mediana))

# calculando o desvio padrão
ex2_desviop = round(sd(df.ex2$Casas),6)
print(paste("Desvio Padrão das Casas:", ex2_desviop))

# calculando a variância
ex2_varianca <- round(var(df.ex2$Casas),6)
print(paste("Variância das Casas:", ex2_varianca))
var (df.ex2)

# valor mínimo
ex2.minimo <- min(df.ex2$Casas)
print(paste("Valor mínimo das  Casas:", ex2.minimo))

# valor máximo
ex2.maximo <- max(df.ex2$Casas)
print(paste("Valor máximo das Casas:", ex2.maximo))

# calculando os quartis
ex2.quartis <- round(quantile(df.ex2$Casas),2)
q1 <- ex2.quartis[2]
print(paste("Q1:", q1))

q3 <- ex2.quartis[4]
print(paste("Q3:", q3))

summary (df.ex2)


