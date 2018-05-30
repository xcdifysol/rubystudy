
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
		@type
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
		@color
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
		@color
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

RSpec.describe Vehicle do

	it "should return type of vehicle truck and wheel count zero" do
    expect(Vehicle.new("Truck").getType()).to eq("Truck")
    expect(Vehicle.wheel_count).to eq(0)
  end 

  it "should return bike color red" do
    expect(Bike.new("red").getColor()).to eq("red")
  end

  it "should return type Bike" do
    expect(Bike.new("black").getType()).to eq("Bike")
  end

  it "should return wheel count 2" do
  	bike = Bike.new("red")
  	expect(Bike.wheel_count()).to eq(2)
  end

  it "should return Car color black" do
    expect(Car.new("red").getColor()).to eq("red")
  end

  it "should return type Car" do
    expect(Car.new("black").getType()).to eq("car")
  end

  it "should return wheel count 4" do
  	bike = Car.new("red")
  	expect(Car.wheel_count()).to eq(4)
  end
end
