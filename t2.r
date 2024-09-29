
#1 Define a function named greet that prints a message "Hello,How are you?!" and call it
greet<-function(){
  print("Hello,How are you?!")
}
greet()



#2 Create a function called greet_person that takes a name argument and prints a personalised greeting
greet_person<-function(name){
  paste("Hello",name,"how are you?!")
}
greet_person("Eagle")



#3 Create a function full_name that takes first_name, last_name and age as arguments and prints the full name with age.
full_name<-function(first_name,last_name,age){
  paste("First name: ",first_name," Last name: ",last_name," Age:",age)
}

full_name("Keanu","Revess",59)
full_name("Bruce","wayne",35)



#4 Create a function square that takes a number as an argument, calculates its square, and returns the result.

#4.1
square<-function(value){
  paste(value*value)
  
}
square(7)

#4.2
square<-function(value){
  return(value^2)
}
square(9)



#5  Write a function check_number that takes a number and returns whether it is positive, negative, or zero.
check_number<-function(number){
  if(number<0){
    print("Negative")
  }else if(number>0){
    print("Positive")
  }else{
    print("Zero")
  }
}

check_number(7)



#6  Create a function sum_n that takes a number n as an argument and returns the sum of the first n natural numbers.
sum_n<-function(n){
  return((n*(n+1))/2)
}
sum_n(5)

