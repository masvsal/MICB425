library(dplyr)

generate_collection <- function(candy_data){
  candy_pool <- c()
  for (candy in candy_data$Name){
    candy_pool <- c(candy_pool, rep(candy, candy_data[candy_data$Name == candy,]$Num_Occurences))
  }
  return(candy_pool)
}

generate_collection_curve <- function(samples){
  encountered <- c(samples[1])
  x <- c(1)
  y <- c(1)
  for (i in 2:length(samples)){
    curr_y <- if (!(samples[i] %in% unique(encountered))) 1 else 0
    encountered <- c(encountered, samples[i])
    x <- c(x, i)
    y <- c(y, y[i-1]+curr_y)
  }
  return(data.frame(x = x, y = y))
}

#PARAMETERS
NUM_SAMPLES <- 614

#read in data
candy_data <- read.table("./data_collection.txt", sep = "\t", header = T) %>% select(-"Num")

#create sample pool
candy_pool <- generate_collection(candy_data)

#sample from pool
candy_samples <- sample(candy_pool, NUM_SAMPLES, replace = F)

#create collection curve
collection_curve <- generate_collection_curve(candy_samples)

#plot collection curve
plot(collection_curve, main = "Collection Curve")
