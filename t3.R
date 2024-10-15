#Tutorial 3

#Basic Vector Creation and Manipulation
#1
numeric<-c(5,10,15,20)
print(length(numeric))

#2
days<-c("Monday","Tuesday","Wednesday","Thursday","Firday","Saturday","Sunday")
days[3]

#3
logical<-c(TRUE,FALSE,TRUE)
logical[2]=TRUE
logical

#Vector Operations and Indexing
#4 Generate a sequence of numbers from 1 to 20 using the seq() function. Use indexing to extract 
#  the 5th to 10th elements.
numbers<-seq(1:20)
num<-numbers[5:10]
print(num)

#5 Create two numeric vectors and add them together element-wise. What happens if the vectors 
#  have different lengths?
number1<-c(2,7,5,8,4,8)
number2<-c(5,7,8,9,7,10,11,12)
total<-number1+number2
print(total)


#Handling Missing Data in Vectors 
#6Create a numeric vector with some missing values (NA). Write a code to replace all NA values 
# with the mean of the remaining elements.
vec<-c(1,2,3,4,NA,6,NA,8,9)

meanValue<-mean(vec,na.rm =TRUE)
vec[is.na(vec)]<-meanValue
print(vec)



#7 Use logical indexing to filter out elements in a vector that are greater than a specified value. 
#  Write the code to return only values less than 50 from the vector c(10, 45, 60, 80, 30).
vec<-c(10,20,30,40,50,60,70,80,90,100)
print(vec)
vecc<-vec[vec<50]
vecc


#Vector Functions and Utilities
#8 Create a vector using rep() to repeat the values 1, 2, and 3, three times. What does the output 
#  look like? 
# 8.1
value<-c(1,2,3)
rep(value,3)

# 8.2
repeat1<-rep(c(1,2,3),times=3)
print(repeat1)


#9 Use the c() function to combine a character vector of colors ("red", "blue", "green") and a 
# numeric vector (1, 2, 3). What type does the resulting vector become, and why?
colors<-c("red","blue","green")
numeric<-c(1,2,3)
both<-c(colors,numeric)
print(both)


#Vector Creation and Transformation 
#1 Create a vector with 10 random integers between 1 and 100. Write a function to return only the 
#  even numbers from this vector. 
random_numbers<-sample(1:100,10)
even_numbers<-function(vec){
  even<-vec[vec %%2==0]
  return(even)
}
random_numbers
even_numbers(random_numbers)


#2 Given a vector of student scores, c(85, 92, 76, 64, 58, 89, 99), write code to find the highest and 
#  lowest scores. 

scores<-c(85, 92, 76, 64, 58, 89, 99)
s<-0
t<-100
for (x in scores) {
    if(x>s){
      s<-x
    }else if(x<t){
      t<-x
    }
}
print(paste("Highest value: ",s))
print(paste("Lowest value: ",t))


#3 Create a character vector c("Apple", "Banana", "Cherry", "Date"). Write code to replace "Cherry" 
#  with "Citrus". 
#3.1 
vector<-c("Apple", "Banana", "Cherry", "Date")
vector[3]="Citrus"
vector


#3.2
vector<-c("Apple", "Banana", "Cherry", "Date")
vector[vector=="Cherry"]<-"Citrus"
vector


#Vector Sorting and Searching
#4 Create a vector of 5 random integers and write code to sort the vector in descending order. 
vector<-sample(5)
vector
descending<-sort(vector,decreasing = TRUE)
descending


#5 Write a code snippet to find the index positions of a value greater than 50 in a given numeric 
#  vector. 
vector<-c(10,77,30,99,50,60,70,90,9,10)
values<-which(vector>50)
values


#Vector Aggregation and Analysis
#6 Create a numeric vector and compute the sum, mean, and median of its elements. How would 
#  you exclude NA values in these calculations?
vector<-c(10,77,30,99,50,60,70,90,9,10,NA)
summary(vector)

Sum<-sum(vector,na.rm=TRUE)
print(paste("Sum: ",Sum))

Mean<-mean(vector,na.rm = TRUE)
print(paste("Mean: ",Mean))

Median<-median(vector,na.rm=TRUE)
print(paste("Median: ",Median))


#7 Given two vectors x <- c(2, 4, 6, 8) and y <- c(1, 3, 5, 7), write code to compute the dot product 
#  of x and y.
x <- c(2, 4, 6, 8)
y <- c(1, 3, 5, 7)

dot_product<-sum(x*y)
dot_product


#Understanding Vector Basics
#1. What is a vector in R, and how is it different from other data structures?

#  Vector is a simple list of item with same type.
#  "c()" use for combine list of item in vector.


#2. What are the different types of vectors in R, and how can you identify them?
#  Numeric vector - numbers
numeric_vector<-c(7,4,3,9,10)
numeric_vector

#  Character vector - text or strings
character_vector<-c("E","A","G","L","E")
character_vector

#  Logical vector - use true of false
logical_vector<-c(TRUE,FALSE,TRUE,TRUE,TRUE)
logical_vector

#  Complex vector - complex number with real and imaginary parts
complex_vector<-c(1+3i,9-1i)
complex_vector

#  Raw vector - raw bytes
raw_vector<-charToRaw("HelloThere")
raw_vector


#3. How do you create a numeric, character, and logical vector in R? Provide examples.
numeric_vector<-c(7,4,3,9,10)
character_vector<-c("E","A","G","L","E")
logical_vector<-c(TRUE,FALSE,TRUE,TRUE,TRUE)

numeric_vector
character_vector
logical_vector



#Manipulating Vectors
#4. How would you access and modify individual elements in a vector?
numeric_vector<-c(7,4,3,9,10)

#Add item
numeric_vector[6]=7
numeric_vector

#Change item
numeric_vector[2]=7
numeric_vector


#5. Describe how to concatenate multiple vectors in R. What function is used for this purpose?
vec1<-c(7,8,9)
vec2<-c("A","A+","A++")
vec3<-c(FALSE,TRUE,TRUE)

con<-c(vec1,vec2,vec3)
con


#6. Explain the significance of vector recycling in R. Provide a scenario where it could lead to
#   unexpected results.

# Vector recycling is use to combine vectors with difference length.
# because of mismatched vector length it will provide unexpected results.
vec1<-c(7,8,9,10)
vec2<-c(7,8,9)

sum<-vec1+vec2
sum



#Vector Operations
x <- c(2, 2, 6, 8)
y <- c(1, 3, 5, 7)

#7. What are some common arithmetic operations you can perform on vectors in R?
#(+)
addition<-x+y 
addition

#(-)
subtraction<-x-y
subtraction

#(*)
multiplication<-x*y
multiplication

#(/)
division<-x/y
division


#8. How can you subset a vector using logical indexing? Give an example.
x <- c(2, 4, 6, 8)
subset<-x[x>5]
subset


#9. Describe how to use seq() and rep() functions to generate a sequence and repeat elements in a
#   vector

#seq()- generate sequence of numbers
seq(1,10, by=2)

seq(1,10,length.out=7)

#rep() - repeat element of the vector
rep(c(7,8,9),times=3)

rep(c(7,8,9),each=3)

rep(c(7,8,9),length.out=9)


#Advanced Vector Concepts
#10. Difference between named vectors and unnamed vectors? How do you assign names to vector elements? 

#Unnamed vectors - create numeric vectors.(no label assign)
unnamed<-c(9,7,90,87,89)
unnamed

#Named vectors - create named for the numeric vectors.(With labels)
names(unnamed)<-c("num1","num2","num3","num4","num5")
unnamed

#11.How to handle missing values (NA) in vectors. Which functions are used to remove or replace NA values? 
vector<-c(1,2,3,4,NA,5,NA,7)

#identify missing value
missing_values<-is.na(vector)
missing_values

#Replace using mean value
vector<-c(1,2,3,4,NA,5,NA,7)

# way 1
mean_values<-mean(vector, na.rm = TRUE)
vector[is.na(vector)]<-mean_values
vector

# way 2
mean_values<-mean(vector, na.rm = TRUE)
replaced_vector<-ifelse(is.na(vector),mean_value,vector)
replaced_vector

#Replace median value
vector<-c(1,2,3,4,NA,5,NA,7)

median_value<-median(vector, na.rm = TRUE)
replaced_vector<-ifelse(is.na(vector),median_value,vector)
replaced_vector


#remove NA value
vector<-c(1,2,3,4,NA,5,NA,7)

remove_vector<-na.omit(vector)
remove_vector

#Using is.na
vector<-c(1,2,3,4,NA,5,NA,7)

cleaned_vector<-vector[!is.na(vector)]
cleaned_vector


# Example vector with missing values
vector <- c(1, 2, NA, 4, 5)

# Calculate median of the non-NA values
median_value <- median(vector, na.rm = TRUE)
median_value
# Replace NA values with the median
vector[is.na(vector)]<-median_value
vector
