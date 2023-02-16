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

#Site de Origem da Base de Dados - http://staff.pubhealth.ku.dk/~tag/Teaching/share/data/Bodyfat.html

# Passo 1 - Descrevendo o problema de Negócio

## A partir de um estudo realizado com 252 indivíduos, coletaram-se diversas amostras com as medidas corporais.
## A variável Y (Preditora) recebe o nome de "BodyFat" que corresponde ao total de gordura acumulada do indivíduo.
## Nosso objetivo com este estudo é inferir quais medidas coletadas posteriormente serão suficientes para prever o volume total de gordura do indivíduo para otimizar o trabalho.

# Passo 2 - Análise Descritiva Univariada







Bodyfat <- read_csv("dados/Bodyfat.csv")
# tirando uma variavel que nao sera usada (contexto negocio)
Bodyfat <- Bodyfat %>%
  select(-Density)
View(Bodyfat)





#3. Brincando e aprendendo com o problema Bodyfat#####################################################
# exercício BODYFAT
# importando CSV que foi baixado em: http://staff.pubhealth.ku.dk/~tag/Teaching/share/data/Bodyfat.html
Bodyfat <- read_csv("dados/Bodyfat.csv")
# tirando uma variavel que nao sera usada (contexto negocio)
Bodyfat <- Bodyfat %>%
  select(-Density)
View(Bodyfat)
