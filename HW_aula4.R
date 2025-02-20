##### aula 4 #####

### função criada
minhaFuncao <- function(param1, param2, param3)
{
  #corpo da função
  vFuncao <- (param1 + param2) - param3
  
  #saida da função
  return(vFuncao)
}

#aplicação
minhaFuncao(param1 = 10,param2 = 3,param3 = 2)

minhaFuncao(10,3,2)


### pacote purr
mm <- matrix(c(1, 4, 10, 5, 12, 3), nrow = 2, ncol = 3)
mm

apply(mm, 1, mean)


### operador pipe %>%
vPipe <- c(100, 35, 67, 1, 9, 2, 15)
vPipeSort <- vPipe%>%sort()
median(vPipe)

#mediana criada
med_ord <- function(vPipeSort)
{
  if(length(vPipeSort)%%2 == 0)
  {
    #média entre os 2 elementos do meio
    return(mean(vPipeSort[round(length(vPipeSort)/2):((length(vPipeSort)/2)+1)]))
  } else
  {
    #número do meio
    return(vPipeSort[round(length(vPipeSort)/2)])
  }
}

vPipe %>% sort() %>% med_ord()


### pacote dplyr
mm
df <- as.data.frame(mm)
colnames(df) <- c("A", "B", "C")

df[,2]
df%>%dplyr::select(2)

df[which(df[,2] == 10),]
df%>%dplyr::filter(2 == "10")

