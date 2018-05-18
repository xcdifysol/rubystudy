# To take input from the user,
puts "Enter A Number : "
n = gets.chomp.to_i
# initialize sum and counter
sum = 0
i = 1

while i <= n
    sum = sum + i
    i = i+1    # update counter
end
# print the sum
print("The sum is", sum)