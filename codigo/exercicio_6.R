# Instalando biblioteca readxl para importar para o R arquivos com extensão .xls ou .xlsx.
if (!("readxl") %in% installed.packages()) install.packages("readxl")

# Carregando a biblioteca
library(readxl)

# Importando o arquivo do exercício 6
dataframe.ex6 <- read_excel("./dados/exercicio6.xls",skip = 1, col_names = c("Qualidade", "N_pessoas"), col_types = c("text", "numeric"))
#view(df.ex6)


# transformando os dados em vetor
ex6.em.vetor <- c (dataframe.ex6$Qualidade)

# criando um gráfico

ggplot(dataframe.ex6, aes( y= N_pessoas, x = Qualidade, fill = Qualidade))+
  geom_bar (stat = "identity")
