# Instalando biblioteca readxl para importar para o R arquivos com extensão .xls ou .xlsx.
if (!("readxl") %in% installed.packages()) install.packages("readxl")

# Carregando a biblioteca
library(readxl)

# Importando os dados do exercício 3

dataframe.ex3 <- read_excel("./dados/exercicio3.xlsx",skip = 1, col_names = c("familias", "n_filhos"), col_types = c("numeric"))

# Transformando o conjunto de dados em vetor
v.ex3 <- c(dataframe.ex3$n_filhos)

# Criando uma fução para a moda. 
getmode <- function(v.ex3) {
  unico.v.ex3 <- unique(v.ex3)
  unico.v.ex3[which.max(tabulate(match(v.ex3, unico.v.ex3)))]
}

# calculando a mediana
ex3.mediana = median(dataframe.ex3$n_filhos)
print(paste("Médiana do número de filhos:", ex3.mediana))

# calculando a moda usando a funcao criada
moda <- getmode(v.ex3)
print(moda)

# Outra forma de obter a moda, criando a tabela com frequencia das variaveis
freq = table(dataframe.ex3$n_filhos);
mode (dataframe.ex3$n_filhos)
actual_mode <- table (dataframe.ex3$n_filhos)
actual_mode
# obtendo o valor mais frequente utilizando max
names(actual_mode) [actual_mode == max(actual_mode)]




