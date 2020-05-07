library(ggplot2)
data("economics")

# Print out head of economics
head(economics)

# Plot unemploy as a function of date using a line plot
ggplot(economics, aes(x = date, y = unemploy)) +
  geom_line()


# Adjust plot to represent the fraction of total population that is unemployed
ggplot(economics, aes(x = date, y = unemploy/pop)) +
  geom_line()

#Create recess data frame

recess <- data.frame(
  begin = c("1969-12-01","1973-11-01","1980-01-01","1981-07-01","1990-07-01","2001-03-01"), 
  end = c("1970-11-01","1975-03-01","1980-07-01","1982-11-01","1991-03-01","2001-11-01"),
  stringsAsFactors = F
)

recess


# Basic line plot
ggplot(economics, aes(x = date, y = unemploy/pop)) +
  geom_line()

# Expand the following command with geom_rect() to draw the recess periods
ggplot(economics, aes(x = date, y = unemploy/pop)) +
  geom_rect(data = recess,
            aes(xmin = begin, xmax = end, ymin = -Inf, ymax = +Inf),
            inherit.aes = FALSE, fill = "red", alpha = 0.2) +
  geom_line()
