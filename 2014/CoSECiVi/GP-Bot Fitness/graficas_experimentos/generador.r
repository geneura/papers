#Cargamos librerías
library(xtable) #Librería para la exportación de tablas a latex. ¡Mola!
library(lattice)

#Cargamos los datos de las ejecuciones
t_ex = read.csv("datos/ex_turns.csv")
a_ex = read.csv("datos/ex_area.csv")
s_ex = read.csv("datos/ex_slope.csv")

#Cargamos los resúmenes de los fitness de cada ejecución
t_fitness = t_ex[t_ex[,"IT"]==49,c("EX","BEST_F")]
a_fitness = a_ex[a_ex[,"IT"]==49,c("EX","BEST_F")]
s_fitness = s_ex[s_ex[,"IT"]==49,c("EX","BEST_F")]

#Pintamos los distintos fitness alcanzados en cada ejecución
pdf('bloxplot_fitness_best_generation_each_execution.pdf')
par(mfrow=c(1,3))
boxplot(t_ex[t_ex[,2]==49,"BEST_F"], main="VICTORIES FITNESS", xlab="Execution", ylab="Fitness")
boxplot(a_ex[a_ex[,2]==49,"BEST_F"], main="AREA FITNESS", xlab="Execution", ylab="Fitness")
boxplot(s_ex[s_ex[,2]==49,"BEST_F"], main="SLOPE FITNESS", xlab="Execution", ylab="Fitness")
#title("\nBest Fitness by ",outer=TRUE)
dev.off()

pdf('plot_fitness_best_generation_each_execution.pdf')
par(mfrow=c(3,1))
barplot(t_ex[t_ex[,2]==49,"BEST_F"], main="VICTORIES FITNESS", xlab="Execution", ylab="Fitness",names.arg=t_ex[t_ex[,2]==49,"EX"])
barplot(a_ex[a_ex[,2]==49,"BEST_F"], main="AREA FITNESS", xlab="Execution", ylab="Fitness",names.arg=a_ex[a_ex[,2]==49,"EX"])
barplot(s_ex[s_ex[,2]==49,"BEST_F"], main="SLOPE FITNESS", xlab="Execution", ylab="Fitness",names.arg=s_ex[s_ex[,2]==49,"EX"])
dev.off()


pdf('bloxplot_fitness_average_generation_each_execution.pdf')
par(mfrow=c(1,3))
boxplot(t_ex[t_ex[,2]==49,"AVERAGE_F"], main="VICTORIES FITNESS", xlab="Execution", ylab="Fitness")
boxplot(a_ex[a_ex[,2]==49,"AVERAGE_F"], main="AREA FITNESS", xlab="Execution", ylab="Fitness")
boxplot(s_ex[s_ex[,2]==49,"AVERAGE_F"], main="SLOPE FITNESS", xlab="Execution", ylab="Fitness")
#title("\nBest Fitness by ",outer=TRUE)
dev.off()

pdf('plot_fitness_best_generation_each_execution.pdf')
par(mfrow=c(3,1))
barplot(t_ex[t_ex[,2]==49,"AVERAGE_F"], main="VICTORIES FITNESS", xlab="Execution", ylab="Fitness",names.arg=t_ex[t_ex[,2]==49,"EX"])
barplot(a_ex[a_ex[,2]==49,"AVERAGE_F"], main="AREA FITNESS", xlab="Execution", ylab="Fitness",names.arg=a_ex[a_ex[,2]==49,"EX"])
barplot(s_ex[s_ex[,2]==49,"AVERAGE_F"], main="SLOPE FITNESS", xlab="Execution", ylab="Fitness",names.arg=s_ex[s_ex[,2]==49,"EX"])
dev.off()

pdf('plot_depth_best_generation_each_execution.pdf')
par(mfrow=c(3,1))
barplot(t_ex[t_ex[,2]==49,"BEST_DEPTH"], main="VICTORIES FITNESS", xlab="Execution", ylab="Fitness",names.arg=t_ex[t_ex[,2]==49,"EX"])
barplot(a_ex[a_ex[,2]==49,"BEST_DEPTH"], main="AREA FITNESS", xlab="Execution", ylab="Fitness",names.arg=a_ex[a_ex[,2]==49,"EX"])
barplot(s_ex[s_ex[,2]==49,"BEST_DEPTH"], main="SLOPE FITNESS", xlab="Execution", ylab="Fitness",names.arg=s_ex[s_ex[,2]==49,"EX"])
dev.off()

pdf('plot_age_best_generation_each_execution.pdf')
par(mfrow=c(3,1))
barplot(t_ex[t_ex[,2]==49,"BEST_AGE"], main="VICTORIES FITNESS", xlab="Execution", ylab="Fitness",names.arg=t_ex[t_ex[,2]==49,"EX"])
barplot(a_ex[a_ex[,2]==49,"BEST_AGE"], main="AREA FITNESS", xlab="Execution", ylab="Fitness",names.arg=a_ex[a_ex[,2]==49,"EX"])
barplot(s_ex[s_ex[,2]==49,"BEST_AGE"], main="SLOPE FITNESS", xlab="Execution", ylab="Fitness",names.arg=s_ex[s_ex[,2]==49,"EX"])
dev.off()

##Parámetros de la ejecución de cada algoritmo


pdf('plot_turns_best_fitness.pdf')
par(mfrow=c(3,7),mai = rep(1,4), pin = c(0.8,1))
for (i in 0:9 ) {
  plot(t_ex[t_ex[,1]==paste("t_0",i,sep=""),"BEST_F"], main=paste("t_0",i,sep=""), xlab="Generation", ylab="Fitness",ylim=c(0,5),type="l")
}
for (i in 10:20 ) {
  plot(t_ex[t_ex[,1]==paste("t_",i,sep=""),"BEST_F"], main=paste("t_",i,sep=""), xlab="Generation", ylab="Fitness",ylim=c(0,5),type="l")
}
dev.off()

pdf('plot_area_best_fitness.pdf')
par(mfrow=c(3,7),mai = rep(1,4), pin = c(0.8,1))
for (i in 0:9 ) {
  plot(a_ex[a_ex[,1]==paste("a_0",i,sep=""),"BEST_F"], main=paste("a_0",i,sep=""), xlab="Generation", ylab="Fitness",ylim=c(0,5),type="l")
}
for (i in 10:20 ) {
  plot(a_ex[a_ex[,1]==paste("a_",i,sep=""),"BEST_F"], main=paste("a_",i,sep=""), xlab="Generation", ylab="Fitness",ylim=c(0,5),type="l")
}
dev.off()

pdf('plot_slope_best_fitness.pdf')
par(mfrow=c(3,7),mai = rep(1,4), pin = c(0.8,1))
for (i in 0:9 ) {
  plot(s_ex[s_ex[,1]==paste("s_0",i,sep=""),"BEST_F"], main=paste("s_0",i,sep=""), xlab="Generation", ylab="Fitness",ylim=c(0,5),type="l")
}
for (i in 10:20 ) {
  plot(s_ex[s_ex[,1]==paste("s_",i,sep=""),"BEST_F"], main=paste("s_",i,sep=""), xlab="Generation", ylab="Fitness",ylim=c(0,5),type="l")
}
dev.off()

pdf('plot_turns_average_fitness.pdf')
par(mfrow=c(3,7),mai = rep(1,4), pin = c(0.8,1))
for (i in 0:9 ) {
  plot(t_ex[t_ex[,1]==paste("t_0",i,sep=""),"AVERAGE_F"], main=paste("t_0",i,sep=""), xlab="Generation", ylab="Fitness",ylim=c(0,5),type="l")
}
for (i in 10:20 ) {
  plot(t_ex[t_ex[,1]==paste("t_",i,sep=""),"AVERAGE_F"], main=paste("t_",i,sep=""), xlab="Generation", ylab="Fitness",ylim=c(0,5),type="l")
}
dev.off()

pdf('plot_area_average_fitness.pdf')
par(mfrow=c(3,7),mai = rep(1,4), pin = c(0.8,1))
for (i in 0:9 ) {
  plot(a_ex[a_ex[,1]==paste("a_0",i,sep=""),"AVERAGE_F"], main=paste("a_0",i,sep=""), xlab="Generation", ylab="Fitness",ylim=c(0,5),type="l")
}
for (i in 10:20 ) {
  plot(a_ex[a_ex[,1]==paste("a_",i,sep=""),"AVERAGE_F"], main=paste("a_",i,sep=""), xlab="Generation", ylab="Fitness",ylim=c(0,5),type="l")
}
dev.off()

pdf('plot_slope_average_fitness.pdf')
par(mfrow=c(3,7),mai = rep(1,4), pin = c(0.8,1))
for (i in 0:9 ) {
  plot(s_ex[s_ex[,1]==paste("s_0",i,sep=""),"AVERAGE_F"], main=paste("s_0",i,sep=""), xlab="Generation", ylab="Fitness",ylim=c(0,5),type="l")
}
for (i in 10:20 ) {
  plot(s_ex[s_ex[,1]==paste("s_",i,sep=""),"AVERAGE_F"], main=paste("s_",i,sep=""), xlab="Generation", ylab="Fitness",ylim=c(0,5),type="l")
}
dev.off()

rm(i)

#Creamos una tabla


tabla <- t_ex[t_ex[,2]==49,c(1,2)]
tabla$TURNS_EX <- t_ex[t_ex[,2]==49,c(1)]
tabla$TURNS_BEST_FITNESS <- t_ex[t_ex[,2]==49,c(4)]
tabla$TURNS_AVERAGE_FITNESS <- t_ex[t_ex[,2]==49,c(5)]

tabla$SLOPE_EX <- s_ex[s_ex[,2]==49,c(1)]
tabla$SLOPE_BEST_FITNESS <- s_ex[s_ex[,2]==49,c(4)]
tabla$SLOPE_AVERAGE_FITNESS <- s_ex[s_ex[,2]==49,c(5)]

tabla$AREA_EX <- a_ex[a_ex[,2]==49,c(1)]
tabla$AREA_BEST_FITNESS <- a_ex[a_ex[,2]==49,c(4)]
tabla$AREA_AVERAGE_FITNESS <- a_ex[a_ex[,2]==49,c(5)]

tabla$EX <- NULL
tabla$IT <- NULL

sink(file="tabla_fitness.latex")
xtable(tabla)
dev.off()

rm(tabla)

#
#RESULTADOS DE LAS EJECUCIONES
#

batallas = read.csv('datos/batallas.csv')

#Gráfica ponderada de los mejores de cada ejecución
pdf('barra_top_10.pdf')
barplot(head(sort(table(batallas[batallas[,"Wins"]!="DRAW","Wins"])/1134*100,decreasing=TRUE),n=10),ylim=c(0,100),ylab="%Victories")
dev.off()

pdf('barra_todos.pdf')
barplot(head(sort(table(batallas[batallas[,"Wins"]!="DRAW","Wins"])/1134*100,decreasing=TRUE),n=63),ylim=c(0,100),ylab="%Victories")
dev.off()

#Victorias de cada tipo de fitness
pdf('barplot_victoria_bot_por_metodo.pdf')
barplot(sort(table(batallas[,"Type"])/nrow(batallas)*100,decreasing=TRUE),ylim=c(0,50),ylab="% Victories")
dev.off()


pdf('boxplot_victoria_bot_por_metodo.pdf')
par(mfrow=c(1,3))
boxplot(as.matrix(table(batallas[batallas["Type"]=="TURNS","Wins"],exclude=c("DRAW","s_0","s_1","s_2","s_2","s_3","s_4","s_5","s_6","s_7","s_8","s_9","s_10","s_11","s_12","s_13","s_14","s_15","s_16","s_17","s_18","s_19","s_20","a_0","a_1","a_2","a_2","a_3","a_4","a_5","a_6","a_7","a_8","a_9","a_10","a_11","a_12","a_13","a_14","a_15","a_16","a_17","a_18","a_19","a_20"))/1134*100),ylim=c(0,100))
title(main="VICTORIES FITNESS",ylab="% Victories")

boxplot(as.matrix(table(batallas[batallas["Type"]=="AREA","Wins"],exclude=c("DRAW","s_0","s_1","s_2","s_2","s_3","s_4","s_5","s_6","s_7","s_8","s_9","s_10","s_11","s_12","s_13","s_14","s_15","s_16","s_17","s_18","s_19","s_20","t_0","t_1","t_2","t_2","t_3","t_4","t_5","t_6","t_7","t_8","t_9","t_10","t_11","t_12","t_13","t_14","t_15","t_16","t_17","t_18","t_19","t_20"))/1134*100),ylim=c(0,100))
title(main="AREA FITNESS")

boxplot(as.matrix(table(batallas[batallas["Type"]=="SLOPE","Wins"],exclude=c("DRAW","a_0","a_1","a_2","a_2","a_3","a_4","a_5","a_6","a_7","a_8","a_9","a_10","a_11","a_12","a_13","a_14","a_15","a_16","a_17","a_18","a_19","a_20","t_0","t_1","t_2","t_2","t_3","t_4","t_5","t_6","t_7","t_8","t_9","t_10","t_11","t_12","t_13","t_14","t_15","t_16","t_17","t_18","t_19","t_20"))/1134*100),ylim=c(0,100))
title(main="SLOPE FITNESS")
dev.off()

#MATRIZ DE PÉRDIDAS
levelplot(as.matrix(table(batallas[batallas["Wins"]=="DRAW",1:2])),col.regions=grey(100:0/100))

#Algunas tablas
sink(file="tabla_victorias_por_metodo.latex")
xtable(table(batallas[,"Type"])/nrow(batallas)*100)
dev.off()

sink(file="tabla_victorias_por_bot.latex")
xtable(table(batallas[,"Wins"])/nrow(batallas)*100)
dev.off()

#VICTORIAS POR TIPO DE MAPA
levelplot(as.matrix(table(batallas[batallas["Type"]=="TURNS",c("Wins","Map")],exclude=c("DRAW","s_0","s_1","s_2","s_2","s_3","s_4","s_5","s_6","s_7","s_8","s_9","s_10","s_11","s_12","s_13","s_14","s_15","s_16","s_17","s_18","s_19","s_20","a_0","a_1","a_2","a_2","a_3","a_4","a_5","a_6","a_7","a_8","a_9","a_10","a_11","a_12","a_13","a_14","a_15","a_16","a_17","a_18","a_19","a_20")  )),col.regions=grey(100:0/100))

#Superficies por método, bot y mapa
levelplot(as.matrix(table(batallas[batallas["Type"]=="TURNS",c("Wins","Map")],exclude=c("DRAW","s_0","s_1","s_2","s_2","s_3","s_4","s_5","s_6","s_7","s_8","s_9","s_10","s_11","s_12","s_13","s_14","s_15","s_16","s_17","s_18","s_19","s_20","a_0","a_1","a_2","a_2","a_3","a_4","a_5","a_6","a_7","a_8","a_9","a_10","a_11","a_12","a_13","a_14","a_15","a_16","a_17","a_18","a_19","a_20"))),col.regions=grey(100:0/100))
#title(main="VICTORIES FITNESS",sub="Victories")

levelplot(as.matrix(table(batallas[batallas["Type"]=="AREA",c("Wins","Map")],exclude=c("DRAW","s_0","s_1","s_2","s_2","s_3","s_4","s_5","s_6","s_7","s_8","s_9","s_10","s_11","s_12","s_13","s_14","s_15","s_16","s_17","s_18","s_19","s_20","t_0","t_1","t_2","t_2","t_3","t_4","t_5","t_6","t_7","t_8","t_9","t_10","t_11","t_12","t_13","t_14","t_15","t_16","t_17","t_18","t_19","t_20"))),col.regions=grey(100:0/100))
#title(main="AREA FITNESS")

levelplot(as.matrix(table(batallas[batallas["Type"]=="SLOPE",c("Wins","Map")],exclude=c("DRAW","a_0","a_1","a_2","a_2","a_3","a_4","a_5","a_6","a_7","a_8","a_9","a_10","a_11","a_12","a_13","a_14","a_15","a_16","a_17","a_18","a_19","a_20","t_0","t_1","t_2","t_2","t_3","t_4","t_5","t_6","t_7","t_8","t_9","t_10","t_11","t_12","t_13","t_14","t_15","t_16","t_17","t_18","t_19","t_20"))),col.regions=grey(100:0/100))
#title(main="SLOPE FITNESS")
rm(t_l)
rm(t_a)
rm(t_s)
dev.off()

#Tabla victorias método por tipo de mapa

      sink(file="tabla_victorias_por_mapa.latex")
      xtable(table(batallas[,c("Type","Map")])/3969)
      dev.off()

vsGenebot = read.csv("datos/VsGenebot_n.csv")






#BOXPLOT VICTORIAS CONTRA GENEBOT
pdf('boxplot_victoria_bot_por_metodo_contra_genebot.pdf')
par(mfrow=c(1,3))
boxplot(as.matrix(table(vsGenebot[vsGenebot["Type"]=="t","Wins"],exclude=c("DRAW","s_0","s_1","s_2","s_2","s_3","s_4","s_5","s_6","s_7","s_8","s_9","s_10","s_11","s_12","s_13","s_14","s_15","s_16","s_17","s_18","s_19","s_20","a_0","a_1","a_2","a_2","a_3","a_4","a_5","a_6","a_7","a_8","a_9","a_10","a_11","a_12","a_13","a_14","a_15","a_16","a_17","a_18","a_19","a_20"))/900*100),ylim=c(0,100))
title(main="VICTORIES FITNESS",ylab="% Victories")

boxplot(as.matrix(table(vsGenebot[vsGenebot["Type"]=="a","Wins"],exclude=c("DRAW","s_0","s_1","s_2","s_2","s_3","s_4","s_5","s_6","s_7","s_8","s_9","s_10","s_11","s_12","s_13","s_14","s_15","s_16","s_17","s_18","s_19","s_20","t_0","t_1","t_2","t_2","t_3","t_4","t_5","t_6","t_7","t_8","t_9","t_10","t_11","t_12","t_13","t_14","t_15","t_16","t_17","t_18","t_19","t_20"))/900*100),ylim=c(0,100))
title(main="AREA FITNESS")

boxplot(as.matrix(table(vsGenebot[vsGenebot["Type"]=="s","Wins"],exclude=c("DRAW","a_0","a_1","a_2","a_2","a_3","a_4","a_5","a_6","a_7","a_8","a_9","a_10","a_11","a_12","a_13","a_14","a_15","a_16","a_17","a_18","a_19","a_20","t_0","t_1","t_2","t_2","t_3","t_4","t_5","t_6","t_7","t_8","t_9","t_10","t_11","t_12","t_13","t_14","t_15","t_16","t_17","t_18","t_19","t_20"))/900*100),ylim=c(0,100))
title(main="SLOPE FITNESS")
dev.off()

#EMPATES
levelplot(as.matrix(table(batallas[batallas["Wins"]=="DRAW",1:2])),col.regions=grey(100:0/100))


pdf('boxplot_victoria_bot_por_metodo_contra_genebot.pdf')
par(mfrow=c(1,3))
table(vsGenebot[vsGenebot["Type"]=="t","Wins"],exclude=c("t_0","t_1","t_2","t_2","t_3","t_4","t_5","t_6","t_7","t_8","t_9","t_10","t_11","t_12","t_13","t_14","t_15","t_16","t_17","t_18","t_19","t_20","s_0","s_1","s_2","s_2","s_3","s_4","s_5","s_6","s_7","s_8","s_9","s_10","s_11","s_12","s_13","s_14","s_15","s_16","s_17","s_18","s_19","s_20","a_0","a_1","a_2","a_2","a_3","a_4","a_5","a_6","a_7","a_8","a_9","a_10","a_11","a_12","a_13","a_14","a_15","a_16","a_17","a_18","a_19","a_20"))/900*100
title(main="VICTORIES FITNESS",ylab="% Victories")

table(vsGenebot[vsGenebot["Type"]=="t","Wins"],exclude=c("t_0","t_1","t_2","t_2","t_3","t_4","t_5","t_6","t_7","t_8","t_9","t_10","t_11","t_12","t_13","t_14","t_15","t_16","t_17","t_18","t_19","t_20","s_0","s_1","s_2","s_2","s_3","s_4","s_5","s_6","s_7","s_8","s_9","s_10","s_11","s_12","s_13","s_14","s_15","s_16","s_17","s_18","s_19","s_20","a_0","a_1","a_2","a_2","a_3","a_4","a_5","a_6","a_7","a_8","a_9","a_10","a_11","a_12","a_13","a_14","a_15","a_16","a_17","a_18","a_19","a_20"))/900*100
title(main="AREA FITNESS")

table(vsGenebot[vsGenebot["Type"]=="t","Wins"],exclude=c("t_0","t_1","t_2","t_2","t_3","t_4","t_5","t_6","t_7","t_8","t_9","t_10","t_11","t_12","t_13","t_14","t_15","t_16","t_17","t_18","t_19","t_20","s_0","s_1","s_2","s_2","s_3","s_4","s_5","s_6","s_7","s_8","s_9","s_10","s_11","s_12","s_13","s_14","s_15","s_16","s_17","s_18","s_19","s_20","a_0","a_1","a_2","a_2","a_3","a_4","a_5","a_6","a_7","a_8","a_9","a_10","a_11","a_12","a_13","a_14","a_15","a_16","a_17","a_18","a_19","a_20"))/900*100
title(main="SLOPE FITNESS")
dev.off()
