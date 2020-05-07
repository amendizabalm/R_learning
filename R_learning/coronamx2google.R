install.packages("googlesheets4")
install.packages("devtools")
devtools::install_github("tidyverse/googlesheets4")
library(googlesheets4)

library(ggplot2)

library(dplyr)

library(scales)

library(reshape2)

read_sheet("https://docs.google.com/spreadsheets/d/190UNcEYaIxrGDRAZ2XupP4pTVQron58XdYmFVftjWR8/edit#gid=0")

#created a function to read the googlesheet
Corona_mx<-function(){
  (read_sheet("https://docs.google.com/spreadsheets/d/190UNcEYaIxrGDRAZ2XupP4pTVQron58XdYmFVftjWR8/edit#gid=0"))
}
#call the function
Corona_mx()
1#Convert into data.frame
Coronamx<- data.frame(Corona_mx())
head(Coronamx)
#add a column with the probably infected people infect_prob_dia= infectados_dia * 2.2 and round the result
Coronamx$infect_prob_dia<-round(Coronamx$infectados_dia * 2.2)
Coronamx
Coronamx$tot_infect_prob<- Coronamx$total_infectados + Coronamx$infect_prob_dia
head(Coronamx)
#first plot
ggplot(Coronamx, aes(fecha)) +
  geom_line(aes(y= total_infectados, colour="total_infectados")) +
  geom_line(aes(y= tot_infect_prob, colour = "tot_infect_prob"))
  
Coronamx

