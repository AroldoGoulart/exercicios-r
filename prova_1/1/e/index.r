
require(readxl)
require(fdth)
require(modeest)

dados=read_excel("/Users/aroldogoulart/workspace/personal/listas_r/prova_1/HD.xlsx",sheet=1)

attach(dados)

# Format ANTES
media_format = mean(FORMAT)
media_format
# Format DEPOIS
# v[v != max(v)] retira  
media_format = mean((media_tempo = FORMAT[FORMAT != max(FORMAT)]))
media_format