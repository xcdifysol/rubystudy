#Module Mixins

module SayMyFirstName 
  attr_accessor :first_name 
  def print_first_name 
    puts "First Name: #{first_name}" 
  end 
end

module SayMyLastName 
  attr_accessor :last_name 
  def print_last_name 
    puts "Last Name: #{last_name}" 
  end 
end

class Person 
  include SayMyFirstName
  include SayMyLastName 
end 


person = Person.new 
person.first_name = "vaibhav" 
person.last_name = "agrawal"
person.print_first_name # => First Name: vaibhav
person.print_last_name # => Last Name: agrawal