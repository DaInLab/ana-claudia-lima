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

# O melhor gráfico para representar os valores é o do "boxplot"!
boxplot(dataframe.ex3)

# Uma versão mais "sofisticada"!
boxplot(dataframe.ex3$n_filhos,
        main = "Número de filhos por família",
        xlab = "familias",
        ylab = "Número de filhos",
        col = "orange",
        border = "brown",
        horizontal = TRUE,
        notch = T
)

# Uma versão dois, com retas indicando os pontos no gráfico
# get quartile in r code (single line)
media = round(mean(dataframe.ex3$n_filhos),2)
print(media)
mediana = round(median(dataframe.ex3$n_filhos),2)
print(mediana)
menorv = round(min(dataframe.ex3$n_filhos),2)
print(menorv)
maiorv = round(max(dataframe.ex3$n_filhos),2)
print(maiorv)

quartiz = round(quantile(dataframe.ex3$n_filhos, prob=c(.25,.5,.75)),2)
quartiz
# 25%  50%  75% 
#2.59 2.61 2.63 

round(summary(dataframe.ex3$n_filhos),2)
#Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
#2.50    2.59    2.61    2.60    2.63    2.64 

boxplot(dataframe.ex3$n_filhos)

abline(a = media, b = 0L, h = NULL, v = T)
abline(a = mediana, b = 0L, h = NULL, v = T)
abline(a = menorv, b = 0L, h = NULL, v = T)
abline(a = maiorv, b = 0L, h = NULL, v = T)
abline(a = quartiz[1], b = 0L, h = NULL, v = T)
abline(a = quartiz[3], b = 0L, h = NULL, v = T)


# Experiências ....

#Outro gráfico
plot(dataframe.ex3$n_filhos, main = "Número de filhos por família",
     xlab = "famílias",
     ylab = "Número de filhos")
barplot(table(dataframe.ex3$n_filhos))

plot(dataframe.ex3$n_filhos)
hist(dataframe.ex3$n_filhos)
lines(dataframe.ex3$n_filhos)
stripchart(dataframe.ex3$n_filhos, vertical = T)




