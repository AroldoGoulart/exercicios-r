
require(readxl)
require(fdth)
require(modeest)

dados=read_excel("/Users/aroldogoulart/workspace/personal/listas_r/prova_1/HD.xlsx",sheet=1)

attach(dados)

# Para as variaveis quantitativas obter e interpretar medida de posicao, medida de dispercao e boxplot

# Tempo
## Posicao
media_tempo = mean(TEMPO)
media_tempo
mediana_tempo = median(TEMPO)
mediana_tempo
moda_tempo = mfv(TEMPO)
moda_tempo

## Dispersao
amplitude_tempo = max(TEMPO) - min(TEMPO)
amplitude_tempo
variancia_tempo = var(TEMPO)
variancia_tempo
desviop_tempo = sd(TEMPO)
desviop_tempo

# Format
## Posicao
media_format = mean(FORMAT)
media_format
median_format = median(FORMAT)
median_format
moda_format = mfv(FORMAT)
moda_format

## Dispersao
amplitude_format = max(FORMAT) - min(FORMAT)
amplitude_format
variancia_format = var(FORMAT)
variancia_format
desviop_format = sd(FORMAT)
desviop_format

## Boxplot
boxplot(TEMPO,main="Tempo x Frequencia", xlab="Tempo", ylab="Frequencia", col="green")