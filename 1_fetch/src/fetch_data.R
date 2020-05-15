# Load Libraries
library(dplyr)
library(readr)
library(stringr)
library(sbtools)
library(whisker)

#create a new function called fetch_data
fetch_data <- function(output_path = '1_fetch/out/model_RMSEs.csv') {
  
  #could make a string to specify the data output path, though this is probably going to be an argument
  #data_path <- '1_fetch/out/model_RMSEs.csv' #make a string to specify a new file path
  
  #fetch data using sbtools
  sbtools::item_file_download('5d925066e4b0c4f70d0d0599', names = 'me_RMSE.csv', destinations = output_path, overwrite_file = TRUE)
  
  # Return the file
  return(output_path)
}


