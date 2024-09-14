# 1
# Display your name and school name in two separate lines.

name<-"Pathum"
school<-"Vidyarathnaya"

name
school


# 2 
# Assign the value 25 to a variable x and 
# -  Multiply x by 3, assign it to the variable “multiplication” & print the value. 
# -  Add 100 to x, assign it to the variable “sum” & print the value. 
# -  Subtract 15 from x, assign it to the variable “difference” & print the value." 

x<-25

multiplication<-x*3
print(multiplication)


sum<-100+x
print(sum)


difference<-15-x
print(difference)

# 3 
# Write an if-else statement that checks if a number x = 10 is greater than 5, and prints 
# "Greater" if true, otherwise "Smaller".
x<-10

if(x>5){
  print("Greater")
}else{
  print("Smaller")
}

# 4
# Create a data frame df with two columns: Name and Age, with values "John", "Alice", 
# "Bob" and 25, 30, 35 respectively. Finally, print the df values.
df<-data.frame(
  Name=c("John","Alice","Bob"),
  Age=c(25,30,35)
)
print(df)

# 5 
# Write a for loop to print numbers from 1 to 150. 
for (x in 1:150) {
  print(x)
}

# 6 
# Find the factorial of 50.

# 6.1
factorial(50)

# 6.2
N<-1
for(f in 1:50){
N=N*f
}

print(N)

# 7 
# Determine if the factorial of a number (e.g., 5) is greater than 100.
x<-1
for(y in 1:5){
  x=x*y
}
print(x)

if (x>100){
  print("Factorial 5 is greater than 100")
}


# 8 
# Check if a number is non-negative before calculating its factorial. 

x<-50
if(x>0){
  Z<-1
  for (Y in 1:x) {
    Z=Z*Y
  }
  print(Z)
}else{
  print("Number is negative")
}

# 9 
# Input two numbers, swap the values and display the output. (Before swap and after swap)
X<-7
Y<-10

temp<-X
x<-Y
print(paste("X:",x))
print(paste("Y:",Y<-temp))

# 10  
# Input a number, calculate its factorial, and use an if statement to check if the factorial 
# is greater than a threshold value (e.g., 1000). Display appropriate messages before and 
# after the check.
A<-50
fact<-(factorial(A))
Threshold<-1000

print(paste("Calculate factorial of ",A," is ",fact))

if(fact>Threshold){
  print("Higher than threshold value")
}else{
  print("Less than threshold value")
}

