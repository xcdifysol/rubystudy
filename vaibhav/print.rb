3.times { puts "Hello World" } # used as a loop

@sum = 0
[1, 2, 4, 9].each { |i| @sum += i }
print @sum
# this is a comment 
puts 5

p "Got it" # => Got it

puts "Got it"

puts 'Got it'


menu = {:omlete => 100, :sandwich => 50, :egg => 30}
  menu.each_pair do |key, value| 
  	puts "Item: #{key}  Price: #{value} Rs" 
end



