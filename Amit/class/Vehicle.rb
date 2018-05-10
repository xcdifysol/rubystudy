
BEGIN {
   puts "Welcome to Vehicle Management System"
   puts "____________________________________"
}

class Vehicle
	attr_accessor :type # instace variable example

	 @@wheel_count = 0 # class variable example
	  def self.wheel_count
	    @@wheel_count
	  end

	def initialize(name) # constructor
	    @type = name
	end

	def getType() # method
		puts type
	end
end

class Bike < Vehicle # inherit Vehicle

	attr_accessor :color 

	def initialize(clr)
	    super("Bike") # calling base constructor
	    @color = clr
	    @@wheel_count = 2
	  end

	def getColor()
		puts color
	end
end

class Car < Vehicle # inherit Vehicle

	attr_accessor :color 

	def initialize(clr)
	    super("car") # calling base constructor
	    @color = clr
	    @@wheel_count = 4
	  end

	def getColor()
		puts color
	end
end

print "Enter vehicle type:"
name = gets.chomp # get user input use chomp for removing new line


if name == "car" # if condition
  car = Car.new("black"); # creating object of class
  car.getType
  car.getColor
  puts Car.wheel_count # using class variable 
elsif name == "bike"
  bike = Bike.new("Red");
  bike.getType
  bike.getColor
  puts Bike.wheel_count
	
else
  puts "We don't have this vehicle type"
end
