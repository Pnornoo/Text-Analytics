#Task 1 Install pacman("Package Manager"), if you don't install.
install.packages("pacman")
library(pacman)

#Task 2 Use pacman to load contributed packages (tidyverse, nycflights13)
p_load(tidyverse, nycflights13)

#Task 3 Nycflights13 is a package: https://cran.r-project.org/web/packages/nycflights13/nycflights.13.pdf

#Task 4 Check out the datatsets in the package
#The following datasets are included in the package airlines, airports, flights, planes, weather
view(airlines)
view(airports)
view(flights)
view(planes)
view(weather)

#Task 5 Investigate the data - Review all the variables carefully.
  #Task 5a Show the description of flights data in the Help window 
    help(flights)
  #How many instances? 
    count(flights)
    #There is a total of 336,766 instances and/or records
  #How many variables?
    ls(flights)
    #There is a total of 19 variables
  #Is it a tibble?
    is_tibble(flights)
    #yes
    
#Task 5b Show a structure of the flights dataset
    str(flights)
  
#Task 5c Select 3 variables using one of helper functions(e.g. starts_with("x"),etc.)
    select(flights,ends_with("y"))
    select(flights, matches("d"))
    select(flights, contains("delay"))
  
#Task 5d Find all flights that departed from "JFK"
    DepartedJFK <- filter(flights, origin == "JFK")

#Task 5e Find all flights that flew to Houston (IAH or HOU) and were operated by United or Delta
    FlightsflewtoHouston<- filter(flights, dest =="IAH"| dest =="HOU" & carrier %in% c("AA","UA","DL"))
  
#Task 5f Find all flights that arrived on time (no delay).
    Arrivalontime <- filter(flights, arr_delay == 0)
    Arrivalontime
    
#Task 5g Arrange flights to find the most delayed flights
    Mostdelayedflights <- arrange(flights, desc(dep_delay))
    Mostdelayedflights
    
#Task 5h Create a data frame object that only displays the carrier, origin, destination, air_time, distance, and name it as flight 1
    flight1 = data.frame(flights$carrier, flights$origin, flights$dest, flights$air_time, flights$distance)
    flight1

#Task 5i Add two new variables: speed (distance/air_time*60) and hours(air_time/60) to the data frame that you created.
    flight1 %>%
    mutate(flight1, speed = (flights.distance/flights.air_time)*60, hours = (flights.air_time/60))

#Task 5j Display the data frame flight1 group by a carrier
    flight1 %>% group_by(flights.carrier)
    
#Task 5k Display the average distance and the average hour group by a carrier
    flights %>% 
      group_by(carrier) %>%
      summarise(AverageDistance = mean(distance),
                AverageHour = mean(hour))
      
#Task 5l Display the most visited destination
    MostVisitedDestination <- flights %>% 
      group_by(dest) %>%
      summarise(n = n()) %>%
      mutate(rank = rank(desc(n))) %>%
      filter(rank == 1)
    MostVisitedDestination
    
    
#Task 5m Find the carrier that travels to each destination the most
    TravelDestination <- flights %>%
      group_by(dest, carrier)%>%
      summarise(n = n())%>%
      mutate(rank = rank(desc(n)))%>%
      filter(rank == 1)
    TravelDestination
    
#Task 5n Summarize the statistics of flights1
      summarise(flight1)
    
   
    
    
    

      
    
    
    
    

    
    
    