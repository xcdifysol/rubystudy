class Box
  # The constructor.
  def initialize(width, height)
      # Assign fields from arguments.
      @width = width
      @height = height
  end

  # A custom method.puts "Enter A Number"
num = gets.chomp.to_i
  def display()
      puts @width
      puts @height
  end
end

# Create a new Box.
x = Box.new(10, 5)

# Call the display method.
puts x.display()