# Name: Yash Tailor
# Module 1: Data Analytics and R
# Date: January 14, 2024
# Time: 5:28 PM


cat("\014")
rm(list = ls())
try(dev.off(dev.list()["RStudioGD"]), silent = TRUE)
try(p_unload(p_loaded(), character.only = TRUE), silent = TRUE)
options(scipen = 100)

# 1
123 * 453 #arithmetic operator * used for Multiplication
5^2 * 40 #arithmetic operator ^ and * used for exponentiation and multiplication respectively
TRUE & FALSE #Logical operator & used for and
TRUE | FALSE #Logical operator | used for or
75 %% 10 #Logical operator %% used for modulus (75 mod 10) 
75 / 10 #arithmetic operator / used for division

#2
first_vector <- c(17, 12, -33, 5)
first_vector

#3
counting_by_fives <- c(5, 10, 15, 20, 25, 30, 35)
counting_by_fives

#4
second_vector <- seq(10, 30, 2)
second_vector

#5
counting_by_fives_with_seq <- seq(5,35,5)
counting_by_fives_with_seq 

#6
third_vector <- rep(first_vector, 10)
third_vector

#7
rep_vector <- rep(0,20)
rep_vector

#8
fourth_vector <- c(10:1)
fourth_vector

#9
counting_vector <- c(5:15)
counting_vector

#10
grades <- c(96, 100, 85, 92, 81, 72)
grades           

#11
bonus_points_added <- grades + 3
bonus_points_added

#12
one_to_one_hundred <- c(1:100)
one_to_one_hundred

#13
reverse_numbers <- seq(100,-100,-3)
reverse_numbers

#14

#arithmetic operation adds 20 in each element of the vector variable name “Second_Vector”
second_vector + 20
#arithmetic operation multiplies 20 in each element of the vector variable name “Second_Vector”
second_vector * 20
#This comparison operation compares each element of the vector variable name “Second_Vector” with 20 and writes TRUE as an output if the value of the element is greater than or equal to 20 else it gives FALSE output if a value is less than 20.
second_vector >= 20 
#This comparison operation compares each element of the vector variable name “Second_Vector” with 20 and writes TRUE as an output if the value of the element is not equal to 20 else it gives FALSE output if a value is equal to 20.
second_vector != 20

#15
total <- sum(one_to_one_hundred)
total

#16
average_value <- mean(one_to_one_hundred)
average_value

#17
median_value <- median(one_to_one_hundred)
median_value

#18
max_value <- max(one_to_one_hundred)
max_value

#19
min_value <- min(one_to_one_hundred)
min_value

#20
first_value <- second_vector[c(1)]
first_value

#21
first_three_values <- second_vector[1:3]
first_three_values

#22
vector_from_brackets <- second_vector[c(1,5,10,11)]
vector_from_brackets

#23
#first_vector will only consider True Value and write the output of that position
first_vector
vector_from_boolean_brackets <-  first_vector[c(FALSE, TRUE, FALSE, TRUE)]
vector_from_boolean_brackets

#24
#it gives output as TRUE if the value is greater than or equals to 20 else it gives FALSE as an output
second_vector
second_vector >= 20

#25
#This code gives the values from 10 to 30 with a gap of 2 using the seq() function
ages_vector <- seq(from = 10, to = 30, by = 2)
ages_vector

#26
# This first find the index which is greater than or equals to 20 and writes the actual element containing that index
ages_vector [ages_vector >= 20]

#27
lowest_grades_removed <- grades[grades >= 85]
lowest_grades_removed

#28
middle_grades_removed <- grades[c(-3,-4)]
middle_grades_removed

#29
fifth_vector <- second_vector[c(-5,-10)]
fifth_vector 

#30
set.seed(5) #used to limit the randomness of the numbers
random_vector <- runif(n=10, min = 0, max = 1000) #Writes 10 random numbers within the range of 0 to 1000
random_vector

#31
sum_vector <- sum(random_vector)
sum_vector

#32
cumsum_vector <- cumsum(random_vector)
cumsum_vector

#33
mean_vector <- mean(random_vector)
mean_vector

#34
sd_vector <- sd(random_vector)
sd_vector

#35
round_vector <- round(random_vector)
round_vector

#36
sort_vector <- sort(random_vector)
sort_vector

#37
set.seed(5) # limit the randomness
random_vector <- rnorm(n=1000, mean = 50, sd = 15) #we are getting random 100 numbers with the mean=50 controlling the average of the distribution whereas the sd =15 determines the spread of the distribution.
random_vector

#38
hist(random_vector) #how many times the particular mean is repeated it is called frequency for random 100 numbers. 

#40
install.packages("pacman")
library(pacman)
p_load(tidyverse)

#41
first_dataframe <- read_csv('ds_salaries.csv')
first_dataframe

#42 
#writes the first 6 rows by default from the dataset named “first_dataframe”
head(first_dataframe)

#Writes the first 7 rows from the dataset
head(first_dataframe, n = 7)

#helps to get the names of all columns from the dataset
names(first_dataframe) 

#We extract 2 columns named job_title and salary_in_usd from the “first_dataframe” dataset
smaller_dataframe <- select(first_dataframe, job_title, salary_in_usd)
smaller_dataframe

#We arrange the data of salary_in_usd in descending order from the smaller_dataframe using arrange()
better_smaller_dataframe <- arrange(smaller_dataframe, desc(salary_in_usd)) 
better_smaller_dataframe

#It will fetch the data who's salary is greater than 80000 from the dataset
better_smaller_dataframe <- filter(smaller_dataframe, salary_in_usd >80000) 
better_smaller_dataframe

#It will create new column from existing columns of given dataset
better_smaller_dataframe <- mutate(smaller_dataframe, salary_in_euros = salary_in_usd * .94) 
better_smaller_dataframe

#We can fetch particular rows using slice() function
better_smaller_dataframe <- slice(smaller_dataframe, 1, 1, 2, 3, 4, 10,1)
better_smaller_dataframe

#It is used to extract the values from better_smaller_dataframe and create a blank plotting area
ggplot(better_smaller_dataframe) + 

  #adds a bar chart with the X-axis representing job_title while the Y-axis represents salary_in_usd. 
  geom_col(mapping = aes(x = job_title, y = salary_in_usd), fill ="blue") +
  
  #we get labels such as on the X-axis named “Job Title” and the Y-axis named “Salary in US Dollars” and the title of the overall diagram is "Comparison of Jobs ".
  xlab("Job Title") + ylab("Salary in US Dollars") +  labs(title = "Comparison of Jobs ") +
  
  #scale_y_continuous() is used to customize the Y-axis more by adding a “$” sign in front of the values that are plotted on that axis.
  scale_y_continuous(labels = scales::dollar) + 
  
  #theme(axis.text.x = element_text() is used to change the appearance of text on X-axes. The arguments angle=50 and hjust=1 help to rotate the text to 50 degrees and centre align the text respectively.
  theme(axis.text.x = element_text(angle = 50, hjust = 1))
