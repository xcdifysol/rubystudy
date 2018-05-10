user_detail = { "first_name" => "vaibhav", "last_name" => "agrawal", "age" => 26} 

puts user_detail.length 
puts user_detail["last_name"] 

user_detail["gender"] = "male" 


#In block if you want to write multiline code 
user_detail.each_pair do |key, value| 
  puts "Key: #{key} value: #{value}" 
end


#In block if you want to write single statement we can write in { }.
user_detail.each_pair { |key, value| puts "Key: #{key} value: #{value}" }


