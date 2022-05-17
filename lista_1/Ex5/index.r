require(readxl)
require(fdth)
require(writexl)

dados=read_excel("/Users/aroldogoulart/workspace/personal/listas_r/lista_1/Ex5/dados.xlsx",sheet=1)

attach(dados)
summary(dados)

furtos_dados=factor(Furtos)
table=fdt_cat(furtos_dados,sort=FALSE)
table

attach(table)
write_xlsx(table, '/Users/aroldogoulart/workspace/personal/listas_r/lista_1/Ex5/dados_para_questao.xlsx')

plot(furtos_dados,xlab="Quantidade de Reincidencia (s)",ylab="Frequencia")
