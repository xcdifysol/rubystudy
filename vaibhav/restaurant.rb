class Restaturant
  @@user_order = []; # Class Variable
  puts "Welcome to the Restaturant? Please find the menu: "
  @@menu = {:omlete => 100, :sandwich => 50, :egg => 30}
  @@menu.each_pair do |key, value| 
    puts "  Item: #{key}  Price: #{value} Rs" 
  end

  def get_info 
    @@user_order.each { |user_order| puts " Your bill is #{user_order}" }
  end

  def save_info(item) 
  	price = @@menu[item]
  	@@user_order.push(price) 
  end 
end

res = Restaturant.new

puts "What do you want to order?"
item_name = gets.chomp

case item_name
  when "omlete"
    res.save_info(:omlete)
  when "sandwich"
    res.save_info(:sandwich)
  when "egg"
    res.save_info(:egg)
end

res.get_info


