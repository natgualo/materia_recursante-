install.packages("devtools")
library(devtools)
library(readr)


#Que genera dos bases de datos adicionales que divida en dos +, -  Locus
proteins_167_161521 <- read_csv("Data/proteins_167_161521.csv")

pos <- subset(proteins_167_161521, Strand=="+", select = c(Length, Locus))
pos                 
neg<-subset(proteins_167_161521, Strand=="-", select = c(Length, Locus))
neg

write.csv(pos, file = "Data/positivos.csv")
write.csv(neg, file = "Data/negativos.csv")

#Determine cuál es el gen más grande y más pequeño
min(proteins_167_161521$Length)
max(proteins_167_161521$Length)

#Genera los 10 más grandes y diez más pequeños
sort(proteins_167_161521$Length)[1:10]
sort(proteins_167_161521$Length, decreasing = TRUE)[1:10]

#Un boxplot en pdf en ggplot de las tamaños en aa y en nucleotidos
box<-boxplot(proteins_167_161521$Length)
box1<-boxplot(proteins_167_161521$Stop-proteins_167_161521$Start)
box1
pdf("imagenes/Tamaño AA.pdf")
dev.off

#Cuente el número de genes en el strand + y -
codigo<-subset(proteins_167_161521, Strand=="+", select = c(GeneID))
codigo
#2089

codigo1<-subset(proteins_167_161521, Strand=="-", select = c(GeneID))
codigo1
#2209


y <- matrix(c(1,5,8,-4))


## 16 septiembre

##tabla de excusas

#primero hay que seleccionar de manera al azar un renglon para cada las columna con sample, 
#y el [] es renglon, columna, asignarselo a una variable para que no sea tan largo for
#el for se usa que se repita la variable 3 veces y lo imprima seguido

excusas<-function(){
excusas<-read.cvs()
for (i in 1:5) {
  
introduccion<-Lista.de.excusas.2024...Hoja.1[sample(1:33, 1),1]
introduccion
chivo<-Lista.de.excusas.2024...Hoja.1[sample(1:33, 1),2]
chivo
impedimento<-Lista.de.excusas.2024...Hoja.1[sample(1:33, 1),3]
print(paste(introduccion, chivo, impedimento))

}
}

#funcion del numero del 2 al 9 y que te imprima la tabla 

for (i in 1:10) {
numero*i
print(paste(numero*i))
}

numero<- as.numeric(readline(prompt = "elige un numero del 2 al 9: "))

#21 de octubre

##GGMSA

library("ggmsa")
library(Biostrings)
library(BiocManager)
library(msa)
insulinas<-readDNAStringSet("Insulinas.fasta")
insulinas

ggmsa(insulinas, 0, 10, font = "DroidSansMono", color = "Zappo_AA", char_width= 1, seq_name = TRUE )

resta<-10

while(resta>0){
  print(paste("Tu tiempo para entregar la tarea es: ", resta))
  resta <-resta -1
}


num<-0
contador<-1
while(num<100){
  if(insulinas[[1]][contador]==DNAString("A")){
    num<-num+1
  }
contador<-contador+1
}
contador









