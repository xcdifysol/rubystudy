BEGIN {
   puts "Welcome to Vehicle Management System"
   puts "____________________________________"
}


class Vehicle
  
  @@vehicle_list = [];	
 
  
  def get_vehicles
    @@vehicle_list.each { |vehicle_list| puts vehicle_list }
  end

   def get_vehicle
    print "Enter name:"
    searchName = gets.chomp
    @@vehicle_list.each { |vehicle_list| 
      if vehicle_list[:name] == searchName
        puts vehicle_list
      end
    }
  end

  def save_vehicle(type,name,  wheel)
	vehicle_list = {:type => type,:name => name, :wheel => wheel }
	@@vehicle_list.push(vehicle_list)
  print "vehicle inserted succesfully"
  end 
end

 vehicle = Vehicle.new()
loop do 

  print "What are you looking here : choices are insert, get, getall, update:"
  choice = gets.chomp # get user input use chomp for removing new liner
  puts '_____________________________________________________________________'
  case choice 
    when "insert" # if condition
      print " enter type - "
      type = gets.chomp
      print " enter name - "
      name = gets.chomp 
      print " enter wheel - "
      wheel = gets.chomp

     
      vehicle.save_vehicle(type, name, wheel)

      print "Do you want continue (Y|N)"
      continue = gets.chomp

    when "getall" # if condition
      vehicle.get_vehicles

      print "Do you want continue (Y|N)"
      continue = gets.chomp

     when "get" # if condition
      vehicle.get_vehicle

      print "Do you want continue (Y|N)"
      continue = gets.chomp

  end
  break if continue == "N"
end 
