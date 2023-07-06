#######################################
# Generates a dataset for each target #
# Ricardo Cerri - 24/06/2017          #
#######################################

# RWeka package
library(RWeka)

# Read dataset names and target positions
targetPositions <- scan("target-positions.txt",what="character",sep="")

for(i in 1:length(targetPositions)){
	# Name of the dataset
	nameDataset <- unlist(strsplit(targetPositions[i],"-"))[1]
	
	# Target positions
	posTargets <- unlist(strsplit(targetPositions[i],"-"))[2]
	posTargets <- as.numeric(unlist(strsplit(posTargets,":")))

	# Read dataset
	dataset <- read.arff(paste(nameDataset,'.arff',sep=""))

	# Substitui o valor faltando pela média da variável
	missing <- which(!complete.cases(dataset))
	for(m in missing){
		columns <- which(is.na(dataset[m,]))
		dataset[m,columns] <- apply(dataset[,columns],2,mean,na.rm=T)
	}

	# Indexes of all targets
	targetIndexes <- seq(posTargets[1],posTargets[2])

	# Keep only one target at once  
	for(j in 1:length(targetIndexes)){
		remove <- targetIndexes[!targetIndexes==targetIndexes[j]]

		# Save data with one target
		write.arff(dataset[,-remove], file=paste("Tuning-Mantova/",nameDataset,"_target_",j,".arff",sep=""))
	}

}
