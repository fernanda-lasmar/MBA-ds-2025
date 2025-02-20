install.packages('tidyverse')
install.packages('dlookr')
install.packages("summarytools")
install.packages("readxl")
install.packages('knitr')

library(tidyverse)
library(dlookr)
library(summarytools)
library(readxl)
library(knitr)


```{r importando dados, echo = FALSE}
salarios <- readxl::read_excel("datasets/dados_bussab_m.xlsx")
```

kable(head(salarios))

salarios %>% dlookr::diagnose()%>%kable()

salarios %>% dplyr::select(regiao) %>% summarytools::freq(., style='rmarkdown')

salarios %>% dplyr::select(regiao) %>% summarytools::freq(., style='rmarkdown', order="freq")

salarios %>% dplyr::select(n_filhos) %>% summarytools::freq(., style='rmarkdown', order="freq")

salarios %>% dplyr::select(salario) %>% summarytools::descr(., style='rmarkdown')

salarios %>% dplyr::select(salario, n_filhos, idade_anos) %>% summarytools::descr(., style='rmarkdown')

lapply(salarios, function(var) table(var))

salarios %>% dfSummary() %>% view()
