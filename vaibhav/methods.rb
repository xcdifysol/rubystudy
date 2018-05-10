def factorial (n) 
  n == 0 ? 1 : n * factorial(n - 1) 
end 

def factorial_with_default (n = 5) 
   n == 0 ? 1 : n * factorial_with_default(n - 1) 
end 

puts factorial 5 # => 120
puts factorial_with_default # => 120 
puts factorial_with_default(3) # => 6

#Return Optional
def add(one, two)
  three = one + two
  return three # this statement is optional if we comment then above line will return the output
end

puts add(2, 2) # => 4

# Splat Operator

def max(first_param, *numbers, last_param) #numbers will become an array
  puts first_param
  puts last_param
  numbers.max # return max value from array
end

puts max(7, 32, -4, 6, 7, 9, 67) # => 32 #fisrt  argument and last argument will go in first and last parameter and rest of the  arguments becomes an array


 
