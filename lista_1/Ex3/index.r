require(readxl) 
require(fdth) 

dados=read_excel('/Users/aroldogoulart/workspace/personal/listas_r/lista_1/Ex3/dados.xlsx',sheet=1)

attach(dados)
# dados para tabela
summary(dados)

table=fdt_cat(Qualidade)
table

qual=factor(Qualidade,levels=c("Ótimo","Bom","Regular","Ruim"))

table2=fdt_cat(qual,sort=FALSE)
table2

fa1=table(qual)
fp1=round(100*fa1/sum(fa1),2)

pie(fa1,labels = paste0(fp1,"%"),col= c("cyan4","cyan2","darkslategrey","orange"))
legend("topright",levels(qual), cex = 0.8,fill = c("cyan4","cyan2","darkslategrey","orange"))

