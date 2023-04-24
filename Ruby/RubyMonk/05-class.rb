# Add a method that calculates area using the formula length * breadth.

=begin
class Rectangle
    def initialize(length, breadth)
      @length = length
      @breadth = breadth
    end
  
    def perimeter
      2 * (@length + @breadth)
    end
end
=end

class Rectangle
    def initialize(length, breadth)
      @length = length
      @breadth = breadth
    end
  
    def perimeter
      2 * (@length + @breadth)
    end
  
    def area
      @length * @breadth
    end
end

rectangle = Rectangle.new(10, 5)
puts rectangle.perimeter
puts rectangle.area