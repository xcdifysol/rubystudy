class MyObject  
    class << self  
        def find(id)  
          puts "finding basket with the id of #{id}"  
        end  
    end  
    end  

    basket = MyObject.find('abc') 

    fred = Class.new do
        def meth1
          "hello"
        end
        def meth2
          "bye"
        end
      end

a = fred.new
print "#{a.meth1}\n"
print  "#{a.meth2}\n"         