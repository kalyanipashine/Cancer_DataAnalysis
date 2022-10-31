#Reading an input cancer data file
data=read.csv("GSE212991_Raw_counts.csv",sep=",",header=T,row.names = 1)
dim(data)
#Create a count per matrix
cpm = data
for(i in 1:ncol(data)){
  cpm[,i]=(data[,i]/sum(data[,i]))*1000000
}
#Calculate a log of cpm
logcpm=log2(cpm+1)
logcpm
saveRDS(logcpm,file="logCPM.rds")
summary(logcpm)

#Calculate a z score
library(matrixStats)
z_score = (logcpm - rowMeans(logcpm))/rowSds(as.matrix(logcpm))[row(logcpm)]
z_score

#list()   :- to check if there is any other session is in run or an environment
#rm(list = ls())     :- to clear the previous environment

#Calculate variance using log 
variance = apply(logcpm, 1, var)
variance = sort(variance,decreasing = T)
top50 = variance[1:50]
map = z_score[names(top50),]

library(ComplexHeatmap)
Heatmap(map)
