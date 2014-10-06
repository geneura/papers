#Cargamos los datos
area = read.csv("AREA/area.csv")
turns = read.csv("TURNS/turnos.csv")
slope = read.csv("SLOPE/slope.csv")

#Cargamos librerías
library(xtable)


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

#CREAMOS TABLAS PARA ANTONIO

tabla <- turns[turns[,2]==49,c(1,2)]
tabla$TURNS_BEST_FITNESS <- turns[turns[,2]==49,c(4)]
tabla$TURNS_AVERAGE_FITNESS <- turns[turns[,2]==49,c(5)]

tabla$SLOPE_BEST_FITNESS <- slope[slope[,2]==49,c(4)]
tabla$SLOPE_AVERAGE_FITNESS <- slope[slope[,2]==49,c(5)]

tabla$AREA_BEST_FITNESS <- area[area[,2]==49,c(4)]
tabla$AREA_AVERAGE_FITNESS <- area[area[,2]==49,c(5)]

sink(file="tabla_fitness.latex")
xtable(tabla)
dev.off()


##
## Resultados de las batallas
##

#Cargamos los datos
t = read.csv('resultados_t')
s = read.csv('resultados_s')
a = read.csv('resultados_a')

#Tabla con el fitness y el número de victorias
t_fitness <- turns[turns[,"IT"]==49,c("EX","BEST_F")]
t_victorias = data.frame(table(t[order(t[3]),c(3)])/nrow(t))
t_resumen = merge(t_fitness,t_victorias,by.y="Var1",by.x="EX")

barplot(t_resumen[,3],width=as.matrix(t_resumen[,2]^4),names.arg=t_resumen[,1],main="Turns Fitness")

# -

a_fitness <- area[area[,"IT"]==49,c("EX","BEST_F")]
a_victorias = data.frame(table(a[order(a[3]),c(3)])/nrow(a))
a_resumen = merge(a_fitness,a_victorias,by.y="Var1",by.x="EX")

barplot(a_resumen[,3],width=as.matrix(a_resumen[,2]^4),names.arg=a_resumen[,1],main="Area Fitness")

# -

s_fitness <- slope[slope[,"IT"]==49,c("EX","BEST_F")]
s_victorias = data.frame(table(s[order(s[3]),c(3)])/nrow(s))
s_resumen = merge(s_fitness,s_victorias,by.y="Var1",by.x="EX")

barplot(s_resumen[,3],width=as.matrix(s_resumen[,2]^4),names.arg=s_resumen[,1],main="Slope Fitness")


pdf('wins_barplot_by_fitness.pdf')
par(mfrow=c(3,1))
barplot(t_resumen[,3]*100,width=as.matrix(t_resumen[,2]^3),names.arg=t_resumen[,1],main="Turns Fitness",ylim=c(0,10),ylab="% Victories")
barplot(a_resumen[,3]*100,width=as.matrix(a_resumen[,2]^3),names.arg=a_resumen[,1],main="Area Fitness",ylim=c(0,10),ylab="% Victories")
barplot(s_resumen[,3]*100,width=as.matrix(s_resumen[,2]^3),names.arg=s_resumen[,1],main="Slope Fitness",ylim=c(0,10),ylab="% Victories")
dev.off()


pdf('wins_boxplot_by_fitness.pdf')
par(mfrow=c(1,3))
boxplot(t_resumen[,3]*100,ylim=c(0,10))
title(xlab="Turns Fitness",ylab="% Victories")
boxplot(a_resumen[,3]*100,ylim=c(0,10))
title(xlab="Area Fitness")
boxplot(s_resumen[,3]*100,ylim=c(0,10))
title(xlab="Slope Fitness")
dev.off()

#Hacemos algo con los empates?
table(t[t[,3]=="DRAW",1:2])

#Matriz con los empates
require(lattice)
levelplot(table(t[t[,3]=="DRAW",1:2]),col.regions=gray(100:0/100))

#Pintamos              )
plot(t_[order(t_[3]),c(3)])
#Tabka
table(t_[order(t_[3]),c(3)])

#Tabla con el fitness
tabla <- turns[turns[,"IT"]==49,c("EX","BEST_F")]
d = data.frame(table(t_[order(t_[3]),c(3)]))
resumen = merge(tabla,d,by.y="Var1",by.x="EX")

barplot(resumen[,3],width=as.matrix(resumen[,2]*2),names.arg=resumen[,1])


#CACA
s_ <- s[s[,3]>1,]
aggregate(s_[,3],FUN=sum,by=s_[,1:2])

#Contra quien ha perdido cada bot
pdf('plot_area_average_fitness.pdf')
par(mfrow=c(3,7),mai = rep(1,4), pin = c(0.8,1),mar=c(2.5,1,1,1))
for (i in 0:20 ) {
  plot(table(s[(s[1]==i|s[2]==i)&s[3]!=i&s[3]>1,3]),main=i,ylab="",ylim=c(0,10))
}
dev.off()
