#The olive dataset in dslabs contains composition in percentage of eight fatty acids found in the lipid fraction of 572 Italian olive oils:
library(dslabs)
data(olive)
head(olive)
library("dplyr")
#Plot the percent palmitic acid versus palmitoleic acid in a scatterplot. What relationship do you see?
palmitic_oil<-olive$palmitic
palmitic_oil
palmitoleic_oil<-olive$palmitoleic
palmitoleic_oil
plot(palmitic_oil,palmitoleic_oil)
#answer= positive linear regression
#Create a histogram of the percentage of eicosenoic acid in olive.
eicosenoic_acid<-olive$eicosenoic
eicosenoic_acid
hist(eicosenoic_acid)
#answer=The most common value of eicosenoic acid is below 0.05%.
#Make a boxplot of palmitic acid percentage in olive with separate distributions for each region.
boxplot(palmitic~region, data= olive)
