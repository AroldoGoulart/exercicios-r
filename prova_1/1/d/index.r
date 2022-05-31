
require(readxl)
require(fdth)
require(modeest)

dados=read_excel("/Users/aroldogoulart/workspace/personal/listas_r/prova_1/HD.xlsx",sheet=1)

attach(dados)
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

tapply(TEMPO, MARCA, sd)