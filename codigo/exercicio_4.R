# Instalando biblioteca readxl para importar para o R arquivos com extensão .xls ou .xlsx.
if (!("readxl") %in% installed.packages()) install.packages("readxl")

# Carregando a biblioteca
library(readxl)

# Considere as informações contidas na tabela. Os dados estão na planilha Excel (exercicio4.xls) acerca dos salários de 20 funcionários de um hospital. Faça uma distribuição de frequências e o gráfico histograma correspondente em R.

# Importando os dados do exercício 4
df.ex4 <- read_excel("./dados/exercicio4.xls",skip = 1, col_names = "Salários", col_types = c("numeric"))

# distribuição de frequência
# transformando os dados em vetor
ex4.em.vetor <- c(df.ex4$Salários)

# criando a tabela de frequência
ex4.tabela <-table(ex4.em.vetor)

# imprimindo a tabela de frequência
ex4.tabela
table(df.ex4)


# Histograma



# O melhor gráfico para representar os valores é o do "boxplot"!
boxplot(df.ex4)

