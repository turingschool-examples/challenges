# SuperFizz

In this assignment you'll implement an algorithm that is actually used in some programmer interviews. And the
really shocking part is that some people fail it! This is an extension of the *FizzBuzz* problem. Write an implementation of the following algorithm.

Iterate through the numbers 0 through 1000 and for each one print out exactly one thing. These rules are in descending priority:

* If it's evenly divisible by 3, 5, and 7 print `SuperFizzBuzz`
* If it's evenly divisible by 3 and 7 print `SuperFizz`
* If it's evenly divisible by 5 and 7 print `SuperBuzz`
* If it's evenly divisible by 3 and 5 print `FizzBuzz`
* If it's evenly divisible by 3, print `Fizz`
* If it's evenly divisible by 5, print `Buzz`
* If it's evenly divisible by 7, print `Super`
* Otherwise print just the number

First try to implement the algorithm in the *clearest* way you can.

Once you get that working, create a second version that uses *as few instructions/lines as you can*.

##Extentions

Here's some more you can do if you'd like to get deeper into the exercise. 

###Do it differently

Come up with another way to get the same output. Can you come up with another way to determine the string for a given number? What happens if you don't worry about a clear algorithm.

###Converting individual numbers

Write a method that returns the output for a single number. Then incorporate that into your script that outputs results for 0 through 1000.

###Testing

Write tests for each of the situations listed in the description.

###Classify SuperFizz

Create a SuperFizz class with the following methods:

* convert_number(number)
* output_range(start, end)
