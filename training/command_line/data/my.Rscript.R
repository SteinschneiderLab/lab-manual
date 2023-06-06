setwd('d:/lab-manual/training/command_line/')

flow_data<-read.csv('data/flow_data.csv')

flow<-as.numeric(flow_data$NHGC1)

flow<-flow[-c(1)] #remove first NA value

med_flow<-median(flow)
mean_flow<-mean(flow)
var_flow<-var(flow)

print(paste('flow median = ',med_flow,', flow mean = ',mean_flow,', flow variance = ',var_flow,sep=''))
