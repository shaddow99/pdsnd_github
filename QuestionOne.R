#Reading the datasets
ny = read.csv('new-york-city.csv')
wash = read.csv('washington.csv')
chi = read.csv('chicago.csv')

#importing libraries
library(ggplot2)
library(scales)
######################
#####################

##Question 1: What is the most common month of travel in each of the 3 cities?
##Data Visualizations
popularMonth <- function(data)
{
  d = data
  #convert the 'Start.time' column into DateTime
  d$Start.Time <- as.POSIXct(d$Start.Time)
  
  #Count the number of trip for each month
  ggplot(d, aes(format(Start.Time, "%Y-%m"))) +
    geom_bar(stat = "count") +
    labs(x = "Month of the year", y="Number of trips")+
    ggtitle("Number of trips per month (first six months of 2017)")
}
popularMonth(chi)
popularMonth(ny)
popularMonth(wash)

##Interpretation :
#From the resulting plots we can see that the month with the most number
#of trips is June (06/2017) and it's the case for all the three cities
#Which makes sense, because people drive bikes more in the summer than the
#other seasons, which justify the increasing in the number of trips
#in each month because the weather is getting nicer (no more rain).
#

##Summary Statistics:
#To calculate the mode of a dataset
#ressources : https://www.tutorialspoint.com/r/r_mean_median_mode.htm
getMode <-function(x)
{
  uniq <-unique(x)
  uniq[which.max(tabulate(match(x,uniq)))]
}

popularMonth.summary <- function(data)
{
  d = data
  #convert the 'Start.time' column into DateTime
  d$Start.Time <- as.POSIXct(d$Start.Time)
  #convert the 'Start.time' column into Month
  d$Start.Time <- format(d$Start.Time,"%B")
  #Get the mode of the 'Start.Time' column
  getMode(d$Start.Time)
}
popularMonth.summary(chi)
popularMonth.summary(ny)
popularMonth.summary(wash)

##Sammury Describtion:
#We apply the 'popularMonth.summary' function to each dataset of the three
#cities in order to get the mode of the 'Start.Time' column (most frequent value)
#As we see it's 'Juin' which validate the data visualization
#