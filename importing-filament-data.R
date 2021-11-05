

# set the working directory 

setwd("D:\\Sadhna-HDD\\rstudio-temp\\imaris_segmentation")

#to get each .csv file stored in a seperate variable
temp = list.files(pattern="*.csv")
spinefile<-0;
for (i in 1:length(temp)){
spinefile[i] = lapply(temp[i], read.delim)
spinefile[i]<-data.frame(spinefile[i])
spinefile[i]spinefile[1]<-data.frame(spinefile[i])
}

spinefile[1]<-data.frame(spinefile[1])
spinefile[1]spinefile[1]<-data.frame(spinefile[1])
spinefile[1]

# to get list of file names
for (i in 1:length(temp)) {
  assign(temp[i], read.csv(temp[i]))
}

 
#extract desired spine parameter value into variables
#extract genotype based on filename
