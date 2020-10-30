## Exercise 9
fxn9 <- function(x,y){
  all_values=c()
  #Load a variable with the files in a given directory, and assign vectors to necessary variables
  files<-list.files(path=x,pattern='csv',all.files=TRUE,full.names = TRUE)
  CoEff <- numeric(length = length(files))
  vectormean<-numeric(length=length(files))
  vectorstdev<-numeric(length=length(files))
  for (i in files){
    
  dev=sd(,y)
  }
}
fxn9('C:/Users/bjega/Desktop/Biocomputing/Exercise9',1)


newmean <- function(dir,x){
  for (file in dir)
} 

ants <- read.csv(file = 'ants.csv', header=TRUE,sep = ',')
ants

avg=mean(,y)
Coov=dev/avg
return(Coov)