sens <- c("Camp 2012 (1)", "Camp 2012 (2)", "Camp 2012 (3)", "Camp 2012 (4)", "Fitzgerald 2015", "Gottschalk 2018", "Ju 2017", "Xiong 2015 (2)") # "Xiong 2015 (1)",  does not work
man <- readLines("manuscript/manuscript.Rmd")
man[grepl("sensitivity = FALSE", man)] <- "sensitivity = TRUE"
for(s in sens){
  tmp <- man
  tmp[grepl("{{sens_study}}", tmp, fixed = TRUE)] <- gsub("{{sens_study}}", s, tmp[grepl("{{sens_study}}", tmp, fixed = TRUE)], fixed = TRUE)
  fnam <- file.path("manuscript", paste0("sensitivity_", gsub("[\\(\\) ]", "", s), ".Rmd"))
  writeLines(tmp, fnam)
  rmarkdown::render(fnam)
}
