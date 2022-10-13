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
