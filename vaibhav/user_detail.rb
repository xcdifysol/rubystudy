class Person
 
  @@users_list = []; # Class Variable
  def initialize (name, age) # constructor
    @name = name 
    @age = age 
  end
  
  def get_info 
    @@users_list.each { |user_list| puts user_list }
  end

  def save_info 
  	user_list = {:name => @name, :age => @age }
  	@@users_list.push(user_list) 
  end
end

puts "How many users do you want to store?"
user_count = gets.to_i

for count in 0...user_count do
	puts 'Enter the name of user:- '
	user_name = gets.chomp
	puts 'Enter the age of user:- '
	age = gets.to_i
	person = Person.new(user_name, age)
	person.save_info
end

person.get_info



