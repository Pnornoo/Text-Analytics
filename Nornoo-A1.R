#CIS 428 HW1 - R basics

#2. Write a function to get help about package tidyverse.
help(package = 'tidyverse')

#3. Write a function to set a working directory 
setwd("/Users/priscilla/Desktop/Spring 2023 Semester/CIS 428")

#4. Create a vector of courses that you are taking for last fall semester using the c() function. Hint Course names
FallCourses <- c("Advanced Data Management & Analysis", "Business Analytics", "Data Visualization and Dashboards",
                 "Ethical and Societal Concerns of Computer Scientists", 
                 "Introduction to Data Analytics", "System Architecture and Integration")
is.vector(FallCourses)

#4a. Write a function to show how many elements in the vector
length(FallCourses)

#4b. Write a function to overview of the structure
str(FallCourses)

#4c. Extract one value from the vector
FallCourses[4]

#4d. Extract two values from the vector
FallCourses[2:3]

#5. Create another vector of scores that corresponds to the number of elements in the vector that you created on #4. 
scores <- c(90,80,70,60,50,90)
length(scores)

#5a. Write functions to show the average, minimum and maximum 
mean(scores)
min(scores)
max(scores)

#6. Create a data frame object using vectors from #4 and #5
df <- data.frame(FallCourses, scores)
df


#6a. Subset the rows where the score is greater than 80.
subset(df, scores > 80)

#6b. Subset the rows where the score is lower than 60.
subset(df, scores < 60)

#6c. Provide a summary of the data table. 
summary(df)

#7. Write/Save data from #6 to your working directory.
write.csv(df, file = "df.HW1-R basics")














