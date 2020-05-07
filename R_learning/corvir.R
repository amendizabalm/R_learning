#coronavirus excercises
library(dslabs)
library(dplyr)
library(ggplot2)
#import file in this way to assure fechas are imported as dates
corvir= read.csv(file.choose(),colClasses= c("fecha" = "Date"))
head(corvir)
class(corvir$fecha)

#if R0 for COVID-19 is estimated to be 2.2 let's get the real possible cases for each date.
corvir<-mutate(corvir, casos_prob_dia= round(infectados_dia * 2.2))
head(corvir)

#to get the total probable cases using R0
corvir<-mutate(corvir, total_prob_dia= rowS)
head(corvir)
#to delete a column (should have dplyr installed)
corvir<-select(corvir, -total_prob_dia)
corvir<-select(corvir,-est_casos_acum)
head(corvir)
