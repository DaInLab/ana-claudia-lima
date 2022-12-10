# Instalando biblioteca readxl para importar para o R arquivos com extensão .xls ou .xlsx.
if (!("readxl") %in% installed.packages()) install.packages("readxl")

# Carregando as bibliotecas
library(readxl)
library(tidyverse)
library (ggplot2)



# Importando o arquivo do exercício 5
dataframe.ex5 <- read_excel("./dados/exercicio5.xls",skip = 1, col_names = c("Marcas", "N_pessoas"), col_types = c("text", "numeric"))
#view(df.ex5)


# transformando os dados em vetor
ex5.em.vetor <- c (dataframe.ex5$Marcas)

# criando um gráfico
ggplot(dataframe.ex5) +
  geom_point(mapping=aes(x=Marcas,y= N_pessoas))

ggplot(dataframe.ex5)+
  geom_bar (mapping = aes(x= Marcas, Y= N_pessoas, fill=Marcas))
 

geom_bar (mapping = aes(x= Marcas, Y= N_pessoas, fill=Marcas))+
  facet_grid(Marcas~N_pessoas)



#Criando os vetores com duas variáveis: Marcas e Nºpessoas
Marcas<-c("A","B","C","D","E")
Marcas
Nºpessoas<-c(45,32,23,15,9)
Nºpessoas
# Construir uma tabela
exercicio5<-data.frame(Marcas,Nºpessoas)



par (mgp-c(1,1,0))
png (filename = )

# criando a tabela de frequência
ex5.tabela <-table(ex5.em.vetor)

# imprimindo a tabela de frequência
ex5.tabela
table(ex5.tabela)


# Histograma

hist(df.ex4$Salários)
hist(df.ex4$Salários, breaks = 7, col = "blue", xlab = "Salário dos funcionários")
hist(df.ex4$Salários, breaks = 7, col = "blue", xlab = "Salário dos funcionários", ylab = "Frequência", main = " Histograma de Salários")

hist(df.ex4$Salários, breaks = 7, col = "green", xlab = "Salário dos funcionários", ylab = "Frequência", main = " Histograma de Salários")



# Construir um gráfico

ggplot(x = Marcas, y = N_pessoas) + geom_bar(stat = "identity")

barplot (Marcas, xlab = "Marcas", ylab = "Número de pessoas", main = "Pesquisa de Marcas Preferidas")


barplot (dataframe.ex5)

barplot (height = Marcas)
