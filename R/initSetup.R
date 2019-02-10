# Run when you first get this code
# it will install all missing packages
if (! "properties" %in% installed.packages()[,"Package"]) {
  install.packages("properties")
}
library(properties)
# On ubuntu systems you need
# sudo apt install libcurl4-openssl-dev libssl-dev libxml2-dev
osname = tolower(Sys.info()['sysname'])
if (osname == "linux") {
  name = tolower(read.properties("/etc/os-release")['NAME'])
  if (grepl('ubuntu', name)) {
    message("We are on ubuntu")
    
  }
}
list.of.packages <- c("shiny",
                      "rmarkdown",
                      "gsheet", 
                      "googlesheets", 
                      "plotly",
                      "shinyBS",
                      "openxlsx")

new.packages <- list.of.packages[!(list.of.packages %in% installed.packages()[,"Package"])]
if(length(new.packages)) install.packages(new.packages, repos="http://cran.rstudio.com/")

