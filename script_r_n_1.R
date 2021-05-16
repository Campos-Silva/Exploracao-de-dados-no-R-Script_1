

#_____________________________        Exploração de Dados no R - Script nº 1         ____________________________


#_______________     Análises estatisticas descritivas básicas no Dataframe     ___________________



#Descrição:


# Nesse projeto fiz análises estatistica descritivas básicas em um dataset que contem dados de "Preços de vendas de carros usados".


# Fonte dos dados: https://www.kaggle.com/ankits29/used-car-price-data

#____________________________________________________________________________
#____________________________________________________________________________


###############################################################################
###############################################################################


#__________________     Objetivos do projeto:


#  1 - Identificar a dimensão do dataset (número de linhas e colunas);

#  2 - Descrever a estrutura dos dados do dataset (tipos das variáveis);

#  3 - Identificar se há ausencia de valores no dataset.



##Observação: no próximo projeto irei continuar as análises desse dataframe, o qual irei focar nas análises exploratórias para cada variável.


#*Script desenvolvido por Lucas Andrei Campos-Silva


#_________________________________________________________________________
#_________________________________________________________________________


#_______________             Início do Projeto


#Carregando os dados:

setwd("C:/Users/User/OneDrive/Kaggle/NOVO")

(carros = read.csv("car_data.csv", header = TRUE))

#Checando os nomes das variáveis
names(carros)

#Vendo as 10 primeiras linhas
head(carros, 10)


#_______________________________________________________________________________________


#  1 - Identificar a dimensão do Dataframe (número de linhas e colunas)

#Dimensão dos dados (Linhas / Colunas)
dim(carros)

#Número de linhas
nrow(carros)

#Número de colunas
ncol(carros) 


#_______________________________________________________________________________________


#  2 - Descrever a estrutura dos dados

#Checando a estrutura dos dados - Valores descritivos
str(carros)

#Checando a estrutura dos dados - Gráfico
library(visdat)
vis_dat(carros)


#_______________________________________________________________________________________


#  3 - Identificar se há ausencia de valores
colSums(is.na(carros))

##Checando se há ausência de dados - Gráfico
vis_miss(carros)


#_______________________________________________________________________________________