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

bst <- bugsigdbr::importBugSigDB()

