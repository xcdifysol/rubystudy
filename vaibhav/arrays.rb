array = [1, "two", :three] # heterogeneous types 
puts array[1] # => two

arr_words = %w{ what a great day }  #  %w will create array of all the words
puts arr_words[0] # => what

# Range
p arr_words[2..4] # => ["great", "day"] 

# Make a String out of array elements separated by ‘,’
puts arr_words.join(',') # => what,a,great,day


array = []

#insert element in aray
array << 1
array.push(2).push(4).push(3);
p array

#reverse and sort the array
p array.sort.reverse

#it will select two random elements from array
p array.sample(2)

#Iteration
a = [1, 3, 4, 7, 8, 10] 
a.each { |num| puts num }

new_arr = a.select { |num| num > 4 } 
p new_arr # => [7, 8, 10] 

new_arr = a.select { |num| num < 10 }
           .reject{ |num| num.even? } 
p new_arr # => [1, 3, 7] 

# Map in array
new_arr = a.map {|x| x * 3} 
p new_arr # => [3, 9, 12, 21, 24, 30] 



