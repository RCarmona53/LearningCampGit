# Calculate perimeter

module Perimeter
    def perimeter
      sides.inject(0) { |sum, side| sum + side }
    end
  end
  
  class Rectangle
    include Perimeter
    
    def initialize(length, breadth)
      @length = length
      @breadth = breadth
    end
  
    def sides
      [@length, @breadth, @length, @breadth]
    end
  end
  
  class Square
    include Perimeter
    
    def initialize(side)
      @side = side
    end
  
    def sides
      [@side, @side, @side, @side]
    end
  end

  
# If you prepend a constant with :: without a parent, the scoping happens on the topmost level. 
# In this exercise, change push to return 10 as per A = 10 in the topmost level, outside the Kata module.
module Kata
    A = 5
    module Dojo
      B = 9
      A = 7
  
      class ScopeIn
        def push
          10
        end
      end
    end
  end
    
  A = 10
   
  puts "A - #{A}"
  puts #{Kata::Dojo::ScopeIn.new.push}