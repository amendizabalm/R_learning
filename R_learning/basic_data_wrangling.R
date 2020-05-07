install.packages("dplyr")
library("dplyr")
murders
#mutate adds the column rate to the table with the calculations of murder rate for each state
murders <-mutate(murders, rate=total/population*100000)
murders
#head shows the head of each column in murders and the 6 first elements
head(murders)
#filter uses two arguments: data table and conditional statement
filter(murders, rate <= 0.71)
#select is useful to select one or more columns, the first argument is the table's name, an the other arguments are the columns
new_table <- select(murders, state, region, rate)
filter(new_table, rate <= 0.71)
#using pipe %>% is a lot way easier
murders %>% select(state, region, rate) %>% filter(rate <= 0.71)
murders

# Use filter to create a new data frame no_south
murders
no_south <- filter(murders, region != "South")
no_south
# Use nrow() to calculate the number of rows
nrow(no_south)

# add the rate column
murders <- mutate(murders, rate =  total / population * 100000, rank = rank(-rate))

# Create a table, call it my_states, that satisfies both the conditions 
my_states <- filter(murders, region%in%c("Northeast","West") & rate < 1)
my_states
# Use select to show only the state name, the murder rate and the rank
my_states%>%select(state, rate, rank)

## Define the rate column
murders <- mutate(murders, rate =  total / population * 100000, rank = rank(-rate))

# show the result and only include the state, rate, and rank columns, all in one line
filter(murders, region %in% c("Northeast", "West") & rate < 1) %>% 
  select(state, rate, rank)

# Create new data frame called my_states (with specifications in the instructions)
my_states <- murders%>%mutate(rate =  total / population * 100000, rank = rank(-rate))%>%filter(region %in% c("Northeast", "West") & rate < 1) %>% select(state, rate, rank)
my_states
