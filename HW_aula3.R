### dever de casa aula 3 ###

install.packages("rvest")
library(rvest)

install.packages("robotstxt")
library(robotstxt)

#Checando se o site permite extracao dos dados
paths_allowed(paths="https://en.wikipedia.org/wiki/World_population")

#Lendo os dados e identificando tabelas
populacao.mundial.web <- rvest::read_html("https://en.wikipedia.org/wiki/World_population")
lpop <- populacao.mundial.web %>% rvest::html_nodes("table") %>% html_table()
pop.mundial <- lpop[[4]]

g1.agora <- read_html("https://www.globo.com/")
titulos <- g1.agora %>% rvest::html_elements("h2") %>% html_text()
headlines <- titulos[1:16]
