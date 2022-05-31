require(readxl)
require(fdth)
require(modeest)

dados=read_excel("/Users/aroldogoulart/workspace/personal/listas_r/prova_1/HD.xlsx",sheet=1)

attach(dados)

# Marca
marca_data=fdt_cat(MARCA)
marca_data
plot(marca_data, main="Marca x Frequencia", xlab="Marca", ylab="Frequencia")

# Tempo
tempo_data = fdt(TEMPO)
tempo_data
plot(tempo_data, main="Tempo x Frequencia", xlab="Tempo", ylab="Frequencia")

# Formato
format_data = fdt(FORMAT,start=6,end=14,h=1)
format_data
plot(format_data, main="Formato x Frequencia", xlab="Formato", ylab="Frequencia")
