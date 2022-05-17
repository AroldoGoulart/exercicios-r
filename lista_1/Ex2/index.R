require(readxl) 
require(fdth) 


dados=read_excel("/Users/aroldogoulart/workspace/personal/listas_r/lista_1/Ex2/dados.xlsx")
summary(dados)

attach(dados)
table=fdt(tempo,breaks="FD")
table


par(mfrow=c(1,2))
plot(table,xlab="tempo")
hist(tempo,main="")
