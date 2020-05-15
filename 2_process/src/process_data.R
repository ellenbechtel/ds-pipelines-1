# Load Libraries
library(dplyr)
library(readr)
library(stringr)
library(sbtools)
library(whisker)

# Create function to process data
process_data <- function(input_data = '1_fetch/out/model_RMSEs.csv', output_path = '2_process/out/model_summary_results.csv') {
  
  # Assign each case of model type to a color and symbol shape
  eval_data <- readr::read_csv(input_data, col_types = 'iccd') %>% #create a dataframe called eval_data and give each model type a color and symbol
    filter(str_detect(exper_id, 'similar_[0-9]+')) %>%
    mutate(col = case_when(
      model_type == 'pb' ~ '#1b9e77',
      model_type == 'dl' ~'#d95f02',
      model_type == 'pgdl' ~ '#7570b3'
    ), pch = case_when(
      model_type == 'pb' ~ 21,
      model_type == 'dl' ~ 22,
      model_type == 'pgdl' ~ 23
    ), n_prof = as.numeric(str_extract(exper_id, '[0-9]+')))
  
  # Write data
  readr::write_csv(eval_data, output_path)
  
  #return the data with the added stuff
  return(eval_data)
  
}
  