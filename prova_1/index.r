require(readxl)
require(fdth)
require(modeest)

dados=read_excel("/Users/aroldogoulart/workspace/personal/listas_r/prova_1/HD.xlsx",sheet=1)

attach(dados)

#Questao B
#marca
distmarca=fdt_cat(MARCA)
distmarca
plot(distmarca)

#tempo
dtempo = fdt(TEMPO)
dtempo
plot(dtempo)

#format
dformat = fdt(FORMAT,start=6,end=14,h=1)
dformat
plot(dformat)

##Questao C##

#tempo
##posicao
media_tempo = mean(TEMPO)
media_tempo
mediana_tempo = median(TEMPO)
mediana_tempo
moda_tempo = mfv(TEMPO)
moda_tempo

##dispercao
amplitude_tempo = max(TEMPO) - min(TEMPO)
amplitude_tempo
variancia_tempo = var(TEMPO)
variancia_tempo
desviop_tempo = sd(TEMPO)
desviop_tempo

##boxplot
boxplot(TEMPO,main="Tempo")



#format
##posicao
media_format=mean(FORMAT)
media_format
mediana_format=median(FORMAT)
mediana_format
moda_format=mfv(FORMAT)
moda_format

##dispercao
amplitude_format = max(FORMAT) - min(FORMAT)
amplitude_format
variancia_format = var(FORMAT)
variancia_format
desviop_format = sd(FORMAT)
desviop_format

##boxplot
boxplot(FORMAT,main="Formatacoes")

