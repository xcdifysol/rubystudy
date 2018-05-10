class Person 
  def initialize (name, age) # "CONSTRUCTOR" 
    @name = name 
    @age = age 
  end
  
  def get_info 
    @additional_info = "Interesting" 
    "Name: #{@name}, age: #{@age}" 
  end 
end

person = Person.new("vaibhav", 14) 
p person.instance_variables # [:@name, :@age] 
puts person.get_info # => Name: vaibhav, age: 14 
p person.instance_variables # [:@name, :@age, :@additional_info] 

# with setter and getter
class Employee 
  def initialize (name, age)
    @name = name 
    @age = age 
  end 
  def name 
    @name 
  end 
  def name= (new_name) 
    @name = new_name 
  end 
end 

employee_dtl = Employee.new("vaibhav", 14) 
puts employee_dtl.name # vaibhav 
employee_dtl.name = "agrawal" 
puts employee_dtl.name # agrawal 

#Use of Attribute Accessor
class UserDetails 
  attr_accessor :name, :age # getters and setters for name and age
end 

user_detail = UserDetails.new 
p user_detail.name # => nil 
user_detail.name = "agrawal" 
user_detail.age = 15 
puts user_detail.name # => agrawal 
puts user_detail.age # => 15 
user_detail.age = "fifteen" 
puts user_detail.age # => fifteen 


