boxPlotAGE <- function(csvFile, incr = 10){
  d = read.csv(csvFile)
  a =d[,4:7]
  all_age =  a[a["SIM"]==0,c("SIM","AGE")]
  names(all_age)[2]<-"INITIAL"
  
  for(ite in 1:ite_max){
    
    all_age[2+ite] <- a[a["SIM"]==ite,"AGE"]
    names(all_age)[2+ite]<-ite
    
  }
  
  boxplot(all_age[c("INITIAL",seq(from=incr,to=ite_max,by=incr)) ])
  
}
