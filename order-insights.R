---
  title: "Análise de Cancelamento"
author: "Fernanda"
date: "`r Sys.Date()`"
output: html_document
---
  
  ```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

## Introdução
Este documento apresenta uma análise exploratória de um conjunto de dados de cancelamento de pedidos. O objetivo é compreender padrões, identificar correlações e extrair insights relevantes.

## Carregamento de Pacotes

```{r}
# Instalando e carregando pacotes
install.packages("tidyverse")
install.packages("ggplot2")
install.packages("summarytools")

library(tidyverse)
library(ggplot2)
library(summarytools)
```

## Carregamento dos Dados

```{r}
# Lendo o arquivo CSV
dados <- read.csv("caminho/para/seu/arquivo.csv", sep=",", header=TRUE)

# Exibindo as primeiras linhas
dplyr::glimpse(dados)
```

## Análise Exploratória

A partir daqui, vamos seguir com as próximas etapas da análise.


setwd("C:/Users/fernanda.lasmar_ifoo/Desktop/pessoal/pós ds/EDS/Estatística_para_ds/Rdata/datasets")

customer <- read.csv("C:/Users/fernanda.lasmar_ifoo/Desktop/pessoal/pós ds/EDS/Estatística_para_ds/Rdata/datasets/customer-insights-eds.csv", header = TRUE)

summarytools::descr(customer)

customer

teste <- min(customer[["atraso"]])

teste
