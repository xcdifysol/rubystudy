require 'log4r'
include Log4r
def debug_only(params = nil, &block)
    puts "param class #{params.class}"
    puts "block class #{block.class}" if block_given?
end

debug_only {}
puts "---"
p = Proc.new { |bla| puts "I'm a proc that says #{bla}!"}
# p = proc { |bla| puts "I'm a proc that says #{bla}!"}
debug_only(p)
puts "---"
debug_only(&p)
puts "---"
debug_only("amit", &p)


weekend = proc {|time| time.saturday? || time.sunday? }
weekday = proc {|time| time.wday < 6 }

case Time.now
when weekend then puts "Wake up at 8:00"
when weekday then puts "Wake up at 7:00"
else puts "No wake pu calls outside of time"
end


