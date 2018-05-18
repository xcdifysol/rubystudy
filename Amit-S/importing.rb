# import statement example
# to import standard module math

puts Math::PI

include Math
puts PI.class
require "bigdecimal/math"
include BigMath
puts PI(50).class
puts PI(50)