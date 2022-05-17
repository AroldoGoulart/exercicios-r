require(readxl)

dados = read_excel("/Users/aroldogoulart/workspace/personal/listas_r/lista_1/Ex9/dados_1.xlsx",sheet=1)
dados_numeros = read_excel("/Users/aroldogoulart/workspace/personal/listas_r/lista_1/Ex9/dados_2.xlsx", sheet=1)

attach(dados)
summary(dados)

ensino_nivel = split(dados, dados$`Curso(completo)`)

ensino_F = (ensino_nivel$Fundamental)
ensino_M = (ensino_nivel$Médio)
ensino_S = (ensino_nivel$Superior)

mean(ensino_F$`Salário (R$)`)
median(ensino_F$`Salário (R$)`)

mean(ensino_M$`Salário (R$)`)
median(ensino_M$`Salário (R$)`)

mean(ensino_S$`Salário (R$)`)
median(ensino_S$`Salário (R$)`)

mean(dados$Idade)
mean(dados$`Anos de empresa`)

mean(dados_numeros$Idade)
mean(dados_numeros$`Anos de empresa`)
