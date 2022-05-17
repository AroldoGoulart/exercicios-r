require(readxl)
require(fdth)
require(modeest)

dados=read_excel("/Users/aroldogoulart/workspace/personal/listas_r/lista_1/Ex4/dados.xlsx",sheet=1)

attach(dados)
summary(dados)

table=fdt(Pesos,9)
table

write_xlsx(table[["table"]],"/Users/aroldogoulart/workspace/personal/listas_r/lista_1/Ex4/dados_para_questao.xlsx")

par(mfrow=c(1,1))
h=hist(Pesos,main="")
lines(c(min(h$breaks), h$mids, max(h$breaks)), c(0,h$counts, 0), type = "l")

mean(Pesos)
median(Pesos)
mfv(Pesos)
