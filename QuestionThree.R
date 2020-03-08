#Question 3: What are the counts of each user type (Subscriber/Customer)?
##Data Visualizations
user.Count <- function(d)
{
  ggplot(aes(x=User.Type), data=subset(d, User.Type != ""))+
    geom_bar(stat = "count") +
    labs(x = "User account type", y="Count")+
    ggtitle("The total number of each user account type")
}
user.Count(ny)
user.Count(wash)
user.Count(chi)

##Interpretation :
#For all the three cities, we can see that the number of 'Subsciber' is
#way more bigger than the number of 'Customers', perhaps people prefer
#the subscibtion plan because it's much cheaper
#

##Summary Statistics:
table(ny$User.Type)
table(wash$User.Type)
table(chi$User.Type)
##Sammury Describtion:
#We used the table function to show the total number of each user account type
#As we see, the result support our interpretation, we can see that the number
#of subscriber is much bigger than the number of Customers
#for chicago Number of subscribers is 4 way bigger than customers 
