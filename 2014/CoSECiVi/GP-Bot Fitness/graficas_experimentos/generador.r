#Cargamos librerías
library(xtable) #Librería para la exportación de tablas a latex. ¡Mola!

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
boxplot(t_ex[t_ex[,2]==49,"BEST_F"], main="TURNS FITNESS", xlab="Execution", ylab="Fitness")
boxplot(a_ex[a_ex[,2]==49,"BEST_F"], main="AREA FITNESS", xlab="Execution", ylab="Fitness")
boxplot(s_ex[s_ex[,2]==49,"BEST_F"], main="SLOPE FITNESS", xlab="Execution", ylab="Fitness")
#title("\nBest Fitness by ",outer=TRUE)
dev.off()

pdf('plot_fitness_best_generation_each_execution.pdf')
par(mfrow=c(3,1))
barplot(t_ex[t_ex[,2]==49,"BEST_F"], main="TURNS FITNESS", xlab="Execution", ylab="Fitness",names.arg=t_ex[t_ex[,2]==49,"EX"])
barplot(a_ex[a_ex[,2]==49,"BEST_F"], main="AREA FITNESS", xlab="Execution", ylab="Fitness",names.arg=a_ex[a_ex[,2]==49,"EX"])
barplot(s_ex[s_ex[,2]==49,"BEST_F"], main="SLOPE FITNESS", xlab="Execution", ylab="Fitness",names.arg=s_ex[s_ex[,2]==49,"EX"])
dev.off()


pdf('bloxplot_fitness_average_generation_each_execution.pdf')
par(mfrow=c(1,3))
boxplot(t_ex[t_ex[,2]==49,"AVERAGE_F"], main="TURNS FITNESS", xlab="Execution", ylab="Fitness")
boxplot(a_ex[a_ex[,2]==49,"AVERAGE_F"], main="AREA FITNESS", xlab="Execution", ylab="Fitness")
boxplot(s_ex[s_ex[,2]==49,"AVERAGE_F"], main="SLOPE FITNESS", xlab="Execution", ylab="Fitness")
#title("\nBest Fitness by ",outer=TRUE)
dev.off()

pdf('plot_fitness_best_generation_each_execution.pdf')
par(mfrow=c(3,1))
barplot(t_ex[t_ex[,2]==49,"AVERAGE_F"], main="TURNS FITNESS", xlab="Execution", ylab="Fitness",names.arg=t_ex[t_ex[,2]==49,"EX"])
barplot(a_ex[a_ex[,2]==49,"AVERAGE_F"], main="AREA FITNESS", xlab="Execution", ylab="Fitness",names.arg=a_ex[a_ex[,2]==49,"EX"])
barplot(s_ex[s_ex[,2]==49,"AVERAGE_F"], main="SLOPE FITNESS", xlab="Execution", ylab="Fitness",names.arg=s_ex[s_ex[,2]==49,"EX"])
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



