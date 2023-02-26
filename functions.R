univariada <- function(vetor){
  print('Distribuicao:')
  summary(vetor)

  print('Desvio Padrão:')
  sd(vetor)

  print('Coeficiente de Variação:')
  sd(vetor)/mean(vetor)

  hist(Bodyfat$Biceps)

  boxplot(Bodyfat$Biceps)

  # Realiza o teste
  testeShapiro <- shapiro.test(vetor)

  # Exibe teste
  testeShapiro


  #filter(Bodyfat, is.na(Biceps))
}
