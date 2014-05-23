#Cargamos los datos
area = read.csv("AREA/area.csv")
turns = read.csv("TURNS/turnos.csv")
slope = read.csv("SLOPE/slope.csv")

#Pintamos los distintos fitness alcanzados en cada ejecución
pdf('bloxplot_fitness_best_generation_each_execution.pdf')
par(mfrow=c(1,3))
boxplot(area[area[,2]==49,"BEST_F"], main="AREA FITNESS", xlab="Execution", ylab="Fitness")
boxplot(turns[turns[,2]==49,"BEST_F"], main="TURNS FITNESS", xlab="Execution", ylab="Fitness")
boxplot(slope[slope[,2]==49,"BEST_F"], main="SLOPE FITNESS", xlab="Execution", ylab="Fitness")
dev.off()

pdf('plot_fitness_best_generation_each_execution.pdf')
par(mfrow=c(3,1))
plot(area[area[,2]==49,"BEST_F"], main="AREA FITNESS", xlab="Execution", ylab="Fitness")
plot(turns[turns[,2]==49,"BEST_F"], main="TURNS FITNESS", xlab="Execution", ylab="Fitness")
plot(slope[slope[,2]==49,"BEST_F"], main="SLOPE FITNESS", xlab="Execution", ylab="Fitness")
dev.off()

## AVERAGE FITNESS
pdf('bloxplot_fitness_average_generation_each_execution.pdf')
par(mfrow=c(1,3))
boxplot(area[area[,2]==49,"AVERAGE_F"], main="AREA FITNESS", xlab="Execution", ylab="Fitness")
boxplot(turns[turns[,2]==49,"AVERAGE_F"], main="TURNS FITNESS", xlab="Execution", ylab="Fitness")
boxplot(slope[slope[,2]==49,"AVERAGE_F"], main="SLOPE FITNESS", xlab="Execution", ylab="Fitness")
dev.off()

pdf('plot_fitness_best_average_each_execution.pdf')
par(mfrow=c(3,1))
plot(area[area[,2]==49,"AVERAGE_F"], main="AREA FITNESS", xlab="Execution", ylab="Fitness")
plot(turns[turns[,2]==49,"AVERAGE_F"], main="TURNS FITNESS", xlab="Execution", ylab="Fitness")
plot(slope[slope[,2]==49,"AVERAGE_F"], main="SLOPE FITNESS", xlab="Execution", ylab="Fitness")
dev.off()

##Parámetros de la ejecución de cada algoritmo

pdf('plot_area_average_fitness.pdf')
par(mfrow=c(3,7),mai = rep(1,4), pin = c(0.8,1))
for (i in 0:20 ) {
  plot(area[area[,1]==i,"AVERAGE_F"], main=i, xlab="Generation", ylab="Fitness",ylim=c(0,5))
}
dev.off()

pdf('plot_slope_average_fitness.pdf')
par(mfrow=c(3,7),mai = rep(1,4), pin = c(0.8,1))
for (i in 0:20 ) {
  plot(slope[slope[,1]==i,"AVERAGE_F"], main=i, xlab="Generation", ylab="Fitness",ylim=c(0,5))
}
dev.off()

pdf('plot_turns_average_fitness.pdf')
par(mfrow=c(3,7),mai = rep(1,4), pin = c(0.8,1))
for (i in 0:20 ) {
  plot(turns[turns[,1]==i,"AVERAGE_F"], main=i, xlab="Generation", ylab="Fitness",ylim=c(0,5))
}
dev.off()



pdf('plot_area_best_fitness.pdf')
par(mfrow=c(3,7),mai = rep(1,4), pin = c(0.8,1))
for (i in 0:20 ) {
  plot(area[area[,1]==i,"BEST_F"], main=i, xlab="Generation", ylab="Fitness",ylim=c(0,5))
}
dev.off()

pdf('plot_slope_best_fitness.pdf')
par(mfrow=c(3,7),mai = rep(1,4), pin = c(0.8,1))
for (i in 0:20 ) {
  plot(slope[slope[,1]==i,"BEST_F"], main=i, xlab="Generation", ylab="Fitness",ylim=c(0,5))
}
dev.off()

pdf('plot_turns_best_fitness.pdf')
par(mfrow=c(3,7),mai = rep(1,4), pin = c(0.8,1))
for (i in 0:20 ) {
  plot(turns[turns[,1]==i,"BEST_F"], main=i, xlab="Generation", ylab="Fitness",ylim=c(0,5))
}
dev.off()




pdf('SLOPE_fitness.pdf')
plot(datos[datos[,2]==49,"BEST_F"], main="SLOPE FITNESS - Best Fitness", xlab="Execution", ylab="Fitness")
dev.off()


pdf('SLOPE_fitness_boxplot.pdf')
boxplot(datos[datos[,2]==49,"BEST_F"], main="SLOPE FITNESS - Best Fitness", xlab="Execution", ylab="Fitness")
dev.off()

