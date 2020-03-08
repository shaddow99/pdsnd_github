##Question 2: What is the most common Start station (the station with the most number of trips)?
##Data Visualizations
popularStation <- function(data)
{
  ggplot(data, aes(x=Start.Station))+
    geom_bar(stat = "count") +
    labs(x = "Start Station", y="Number of trips")+
    ggtitle("Number of trips per station")+
    #At this part i didn't know how to only show the top stations so I tricked it
    scale_x_discrete(breaks=c("Streeter Dr & Grand Ave","Pershing Square North","Columbus Circle / Union Station"))+
    if(all.equal(data,chi) == TRUE){
      coord_cartesian(ylim=c(4000,7000))
    }
    else if(all.equal(data,ny) == TRUE){
      coord_cartesian(ylim=c(2000,3500))
    }
    else
      coord_cartesian(ylim=c(4000,6000))
    
}
popularStation(chi)
popularStation(ny)
popularStation(wash)

##Interpretation :
#From the resulting visualization, we can see the start station with
#the most number of trips, we notice that in those stations the number
#of trips is way more greater than the other stations

##Summary Statistics:
getMode(chi$Start.Station)
getMode(ny$Start.Station)
getMode(wash$Start.Station)
##Sammury Describtion:
#Using the getMode function, we can get the most frequent 'Start.Station'
#For Chicago : Streeter Dr & Grand Ave
#For NewYork City : Pershing Square North
#For Washington : Columbus Circle / Union Station
#
