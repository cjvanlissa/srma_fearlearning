# In this file, write the R-code necessary to load your original data file
# (e.g., an SPSS, Excel, or SAS-file), and convert it to a data.frame. Then,
# use the function open_data(your_data_frame) or closed_data(your_data_frame)
# to store the data.

library(worcs)
library(readxl)
library(tidySEM)
dat <- readxl::excel_sheets("SR_SSRI_FearLearning_ForestPlot_data_20211018_Caspar.xlsx")
dat <- lapply(dat[-1], function(x){
  tmp <- as.data.frame(readxl::read_xlsx(path = "SR_SSRI_FearLearning_ForestPlot_data_20211018_Caspar.xlsx", sheet = x))
  names(tmp) <- tolower(names(tmp))
  tmp[["remarks"]] <- NULL
  tmp$Process = x
  tmp
})
dat <- tidySEM:::bind_list(dat)
open_data(dat)
#   Information regarding this data file for the SR fear learning & SSRIs
#
# This data file is organised by fear learning process. This means that every fear learning process has its own Excel sheet.
#
# Within these sheets you find the same layout. The different columns are explained below:
#
#   Study name
# Article code
# Type of SSRI
# Frequency
# Disease induction
# Species
# Type of test
# Sensitivity analysis
#
#
#
# Analyses we want to perform:
#
#   1. Separate meta-analyses of the five fear learning processes that have enough data (acq learn to cue, acq learn to ctx, acq retr to cue, acq retr to ctx, ext learn to cue)
# 2. Subgroup analyses of the five factors (SSRI, frequency, disease induction, species, type of test) per fear learning process
# 3. Check for multi collinearity
