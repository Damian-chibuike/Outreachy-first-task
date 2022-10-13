
<!-- README.md is generated from README.Rmd. Please edit that file -->

# Outreachy-first-task

<!-- badges: start -->
<!-- badges: end -->

The goal of Top_ten is to provide a packages that uses bugsigdbr to retrieve a data set and filter the data frame using dplyr to get the top ten data.

## Installation

You can install the development version of packagetemplate from
[Github](https://github.com) with:

``` r
install_github("Outreachy-first-task")
```

## Example

This is a basic example which shows how to use helloWorld:

``` r
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


```
