#Vamos começar a brincadeira#####################

#1. Carregando Pacotes#####
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



#3. Brincando e aprendendo com o problema Bodyfat#####################################################
# exercício BODYFAT
# importando CSV que foi baixado em: http://staff.pubhealth.ku.dk/~tag/Teaching/share/data/Bodyfat.html
Bodyfat <- read_csv("dados/Bodyfat.csv")
# tirando uma variavel que nao sera usada (contexto negocio)
Bodyfat <- Bodyfat %>%
  select(-Density)
View(Bodyfat)
