install.packages("tidyverse")
install.packages("rvest")
install.packages("data.table")
install.packages("readxl")

library(readxl)


excel <- readxl::read_excel('datasets/dados_bussab_m.xlsx')
head(excel)

?readxl::read_excel

html <- read_html("https://en.wikipedia.org/wiki/World_population")
html <- rvest::read_html("https://en.wikipedia.org/wiki/World_population")
html1 <- html %>% rvest::html_nodes("table") 
