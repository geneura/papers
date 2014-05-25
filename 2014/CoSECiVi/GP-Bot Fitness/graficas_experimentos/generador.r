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
