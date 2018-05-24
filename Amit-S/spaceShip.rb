class Cargoo
  def method_missing(name, *args)
    case name
    when /^find_by_([a-z]+)_and_([a-z]+)$/
      find($1.to_sym => args[0], $2.to_sym => args[1])
    when /^find_by_([a-z]+)$/
      find($1.to_sym => args[0])
        else 
         super
      end
  end

  private
  def find(attrs)
    puts "finding cargo by #{attrs.inspect}"
  end
end

class SpaceShip
attr_reader :name
attr_reader :speed
attr_reader :cargoos
    def initialize(name)
      @name = name
      @cargo = []
      @speed = 0
      @vessels = Hash.new { [] }
      @cargoos = Cargoo.new
    end

    def [](type)
      @vessels[type]
    end
    def []=(type,vehicles)
      @vessels[type] = vehicles
    end
    #add new Item
    def <<(cargo)
      @cargo << cargo
    end
    #sort Items
    def <=>(others)
      name <=> others.name
    end
    def +@
      @speed +=10
    end
    def -@
      @speed -=10
    end
    def !
        puts "self destruct sequence initiated #{self}"
    end
    def launch
       #...
    end
end

ship1=SpaceShip.new("Serenity1")
print "ship1 #{ship1.name}\n"
class Lander;end
ship1[:landers] = [Lander.new, Lander.new]
puts "Landers : #{ship1[:landers].inspect}"

class CargoPod;end
Cargo_pod= CargoPod.new
ship1 << Cargo_pod
print "new pod\n"
p ship1
ship2 = SpaceShip.new("Serenity2")
ship3 = SpaceShip.new("Serenity3")
p [ship1,ship2,ship3].sort.map{|s| s.name}

+ship1
puts "Shpi1 speed #{ship1.speed}"
-ship2
puts "Shpi2 speed #{ship2.speed}"
 
ship1.cargoos.find_by_destination("Earth")
ship1.cargoos.find_bynsme_or_destination(10,12)
# !ship1

# if !ship1
#   puts "ship1 is not exist #{ship1.name}"
# end

return 0