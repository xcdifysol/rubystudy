single_quoted = 'ice cream \n followed by it\'s a party!'
double_quoted = "ice cream \n followed by it\'s a party!" 

puts single_quoted # => ice cream \n followed by it's a party!
puts double_quoted # => ice cream 
                   # =>   followed by it's a party! 

#String Interpolation
def multiply (one, two) 
  "#{one} multiplied by #{two} equals #{one * two}" 
end 
puts multiply(5, 3) 
# => 5 multiplied by 3 equals 15

 
my_name = " vaibhav" 
puts my_name.lstrip.capitalize # => vaibhav 
p my_name # => " vaibhav" 
my_name.lstrip! # removes the leading space 
my_name[0] = 'K' # replace the fist character 
puts my_name # => Kim 

first_name = "My first name is Vaibhav and last name is agrawal "
first_name.sub! 'name', 'changed' # it will replace the first occurence
puts first_name # => My first test is Vaibhav and last name is agrawal 

first_name.gsub! 'name', 'changed' # it will replace all the occurences
puts first_name # => My first test is Vaibhav and last test is agrawal 
