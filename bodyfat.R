library(readr)
library(openxlsx) #biblioteca para escrever arquivo em excel
library(haven)
library(readxl)
library(tidyverse)
library(yardstick) #biblioteca para calcular medidas de erro
library(lmtest) # calcula o teste de homogeneidade de variancia
library(car) # calcula vif
library(ggraph)
library(plotly)
library(ggstance)
library(jtools)
library(olsrr)
library(PerformanceAnalytics)
library(correlation)
library(dplyr)
library(Boruta)
library(nortest)
library(knitr)


path = "D:\\OneDrive\\Pessoal\\ASN.Rocks\\Regressão Linear\\Trabalho\\regressao_linear_R"

setwd(path)

Bodyfat <- read_csv("dados/Bodyfat.csv")

univariada <- function(vetor){
  print('Distribuicao:')
  print(summary(vetor))

  print(paste('Desvio Padrão:', round(sd(vetor),2)))


  print(paste('Coeficiente de Variação:',round(sd(vetor)/mean(vetor)*100,2),"%"))

  hist(Bodyfat$vetor)

  boxplot(Bodyfat$vetor)

  # Realiza o teste
  testeShapiro <- shapiro.test(vetor)

  # Exibe teste
  print(testeShapiro$p.value)

  print('oi')
  #filter(Bodyfat, is.na(Biceps))
}


univariada(Bodyfat$bodyfat)
