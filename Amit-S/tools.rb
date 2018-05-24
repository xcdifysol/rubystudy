class SpaceShip1
    def initialize
        @debug = true
        @debug_attrs = { containment_status: :ok , core_temp: 350 }
    end

    def debug_only
        return nil unless @debug
        return nil unless block_given?
        puts "Running debug code..."
        yield @debug_attrs
    end

    def locate_cargo
        attrs = { weight: 10, destination: "Earth" }
        debug_only do |attrs|
            attrs[ :cargo_accessed ] = true
        end
        p attrs
        p @debug_attrs
    end
end

ship = SpaceShip1.new
ship.locate_cargo

ship.debug_only do
    puts "This is debug output"
end

ship.debug_only do |attrs|
    puts "Debug attr values: #{attrs.inspect}"
end

puts "This code has been executed"