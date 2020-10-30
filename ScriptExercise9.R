## Exercise 9
fxn9 <- function(x,y,z){
  all_values=c()
  #Load a variable with the files in a given directory, and assign vectors to necessary variables
  files<-list.files(path=x,pattern='csv',all.files=TRUE,full.names = TRUE)
  for (i in files){
  Filetable=read.table(i, header=y, stringsAsFactors = FALSE, sep=',', na.strings = c('','NA')) #This should get rid of NA.
  #Now to report the error
  if (Filetable[,z]<50){
    print('error:Less Than 50 Observations')
    decision=readline('Override error and continue anyway? yes/no')
    if (decision=='yes'){
      #The following lines occur if yes is selected and the override happens)
  dev=sd(Filetable[,z]) 
  avg=mean(Filetable[,z])
  Coov=dev/avg
  return(Coov)
    }
    else if (decision=='no')
      print ('Insufficient observations')
    break()  #This should terminate the function)
  }
  #Here is the function in the case that there is greater than 50 observations
  else {
    dev=sd(Filetable[,z]) 
    avg=mean(Filetable[,z])
    Coov=dev/avg
  }
  }
}
fxn9('C:/Users/bjega/Desktop/Biocomputing/Exercise9',TRUE,1)




