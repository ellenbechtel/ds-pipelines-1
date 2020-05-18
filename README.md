
# Here's how to use this script

## Fetch Data
<data <- fetch_data('1_fetch/out/model_RMSEs.csv')>

## Process Data
<model_summary_results <- process_data('1_fetch/out/model_RMSEs.csv','2_process/out/model_summary_results.csv')>

## Get Diagnotstic Log
<model_diagnostic_text <- get_diagnostics('2_process/out/model_summary_results.csv','2_process/out/modeldiagnostic_text.txt')>

## Visualize 
<figure_1.png<- visualize_data('2_process/out/model_summary_results.csv','3_visualize/out/figure_1.png')>

  