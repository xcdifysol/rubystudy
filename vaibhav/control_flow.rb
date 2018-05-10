#if else unless

a = 5

if  a == 3                    
  puts "a is 3"                  
elsif a == 5 
  puts "a is 5"                   
else                              
  puts "a is not 3 or 5"
end 

unless a == 6  #execute when condition is false. Opposite of IF statement 
  puts "a is not 6"
end

#One Liner Condition

puts "One Liner IF statement" if a == 5

#One liner with loop

times = 2 
times *= 2 while times < 100 
puts times # => 128

#True or False
puts "0 is true" if 0 # 0 is true
#puts "false is true?" if "false"
puts "no way - false is false" if false # false is false
#puts "empty string is true" if "" # empty string is true
#puts "nil is true?" if "nil"
puts "no way - nil is false" if nil #nil is false



#switch case
age = 21

case
  when age >= 21
    puts "Your age is greater than or equal to 21" 
  when 1 == 0 
    puts "always false"  
  else 
    puts "Default condition"
end 
# => Your age is greater than or equal to 21

name = 'Fisher' 
case name
  when /fish/i then puts "Something is fishy here"
  when 'Smith' then puts "Your name is Smith"
end

#=> Something is fishy here

#=> For  Loop

for i in 0..2  #it will include 2
  puts i 
end

for i in 0...2  #it will exclude 2
  puts i 
end

# While Example
a = 10

while a > 9 
  puts a                      
  a -= 1 
  # same as a = a - 1
end

# => 10

# Until Example
a = 9

until a >= 10 
  puts a                       
  a += 1                       
end 

# => 9




