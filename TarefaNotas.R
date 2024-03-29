# Estat�stica B�sica

# Parte 4 - Exerc�cios


# Definindo a pasta de trabalho
# Substitua o caminho abaixo pela pasta do seu computador
setwd("C:/Users/amand/Downloads/power bi/cap12")
getwd()

# Carregando o dataset
notas <- read.csv("Notas.csv", fileEncoding = "windows-1252")

# Exerc�cio 1 
# Apresente um resumo de tipos de dados e estat�sticas dataset

# Resumo do dataset
View(notas)
str(notas)
summary(notas$TurmaA)
summary(notas$TurmaB)

# Exerc�cio 2
# Qual a m�dia de cada turma?
# M�dia
mean(notas$TurmaA)
mean(notas$TurmaB)

# Exerc�cio 3
#  Qual turma apresentou maior variabilidade de notas? Justifique sua resposta.
# Vari�ncia
sd(notas$TurmaA)
sd(notas$TurmaB)
# A turma A apresenta maior variabilidade, porque eu tenho um desvio padrão maior.

# Exerc�cio 4
# Calcule o coeficiente de varia��o das 2 turmas.
# Desvio Padrão
media_ta <- mean(notas$TurmaA)
media_tb <- mean(notas$TurmaB)

sd_ta <- sd(notas$TurmaA)
sd_tb <- sd(notas$TurmaB)

cvA <- sd_ta / media_ta * 100
cvB <- sd_tb / media_tb * 100

print(cvA)
cvB

# Exerc�cio 5
# Qual nota apareceu mais vezes em cada turma?
# Moda
# Criando uma fun��o
moda <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}
# Obtendo a Moda
resultado_turmaA <- moda(notas$TurmaA)
print(resultado_turmaA)

resultado_turmaB <- moda(notas$TurmaB)
print(resultado_turmaB)
