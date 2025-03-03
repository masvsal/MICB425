library(dplyr)
library(ggplot2)

generate_collection <- function(candy_data){
  candy_pool <- c()
  for (candy in candy_data$Name){
    candy_pool <- c(candy_pool, rep(candy, candy_data[candy_data$Name == candy,]$Num_Occurences))
  }
  return(candy_pool)
}

generate_collection_curve <- function(samples){
  encountered <- c()
  x <- c(0)
  y <- c(0)
  for (sample in samples){
    increment <- if (sample %in% encountered) 0 else 1
    encountered <- c(encountered, sample)
    x <- c(x, last(x) + 1)
    y <- c(y, last(y) + increment)
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
