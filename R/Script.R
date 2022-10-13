<<<<<<< HEAD
library(bugsigdbr)

Top_ten <- function(x){
  df = importBugSigDB(cache = FALSE)
  
  column = gsub(" ", "_", x)

  df%>%
    rename_with(~gsub(" ", "_", .x))%>%
    group_by_(column)%>%
    summarise(`No of Papers` = n())%>%
    arrange(desc(`No of Papers`))%>%
    head(10)%>%
    rename_if(is.character, ~gsub("_", " ", .x))
}
=======
BiocManager::available()
install.packages(c("devtools", "BiocManager"))
BiocManager::install(version = "devel")
install.packages(c("devtools", "BiocManager"))
BiocManager::install(version = "devel")
BiocManager::install("bugsigdbr")
install.packages("Rtools")

if (!require("BiocManager", queitly = T))
  install.packages("BiocManager")
BiocManager::install("bugsigdbr")

install.packages("tidyverse")

library(bugsigdbr)

Top_ten <- function(x){
  
  library(dplyr)
  
  column = gsub(" ", "_", x)
  
  bugsigdbr::importBugSigDB()%>%
    rename_with(~gsub(" ", "_", .x))%>%
    group_by_(column)%>%
    summarise(`No of Papers` = n())%>%
    arrange(desc(`No of Papers`))%>%
    head(10)%>%
    rename_if(is.character, ~gsub("_", " ", .x))
}

Top_ten("Location of subjects")

>>>>>>> f0a1ba7df28bb016ca94ea0725d4a56cb019a7d5
