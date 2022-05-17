require(readxl) 
require(fdth) 
require(modeest)

dados=read_excel("/Users/aroldogoulart/workspace/personal/listas_r/lista_1/Ex6/dados.xlsx",sheet=1)

attach(dados)
summary(dados)

salario_minimo = (1212)
salario_real_total=Salarios*salario_minimo

salario_real_total

mean(salario_real_total)
median(salario_real_total)
mfv(salario_real_total)
var(salario_real_total)
sd(salario_real_total)

salario_30p = (salario_real_total*0.3)+ salario_real_total
mean(salario_30p)

salario_150t = salario_real_total + 150
mean(salario_150t)
