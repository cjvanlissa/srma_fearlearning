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
  tmp[["Remarks"]] <- NULL
  names(tmp) <- tolower(names(tmp))
  numers <- tolower(c("Mean experimental group", "SD experimental group",
              "Number of animals in intervention group", "Mean control group",
              "SD control group", "Number of animals in control group"))
  cats <- names(tmp)[!names(tmp) %in% numers]
  tmp[numers] <- lapply(tmp[numers], as.numeric)
  tmp$Process = x
  tmp
})
dat <- tidySEM:::bind_list(dat)
open_data(dat)
