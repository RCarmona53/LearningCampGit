# Classes act as templates for the creation of objects, specifying their state and behaviour
# An object created by a class is called an instance of that class
# A class is itself an object, and an instance of the class Class

def know_it_all(object)
    object.class
end

# Inheritance
# Use a while loop to walk up the hierarchy starting with subclass. 
# Stop when you get a nil (you've hit BasicObject) or when you find klass.
def is_ancestor?(klass, subclass)
    current_class = subclass
    while !current_class.superclass.nil? && current_class != klass
      current_class = current_class.superclass
    end
    current_class == klass
  end

# You'll need to implement your own version of initialize on Square that accepts one parameter and sets both @length and @breadth to that value. 
# This way, you don't need to touch perimeter.
# Don't forget to have Square inherit from Rectangle using the < operator.
class Rectangle
  def initialize(length, breadth)
    @length = length
    @breadth = breadth
  end

  def perimeter
    2 * (@length + @breadth)
  end
end

# Create a class Square here
class Square < Rectangle
  def initialize(side)
    @length = @breadth = side
  end
end

# You'll need to create new classes named Human and Penguin. 
# Human inherits from Animal and Penguin from Bird. 
# Now create a move method on each that uses super to get the message from the superclass. 
# Note that the Penguin is actually discarding what its superclass offers because it can't fly. 
# In this case, you can't use super and have to implement the entire message again.
class Animal
    def move
      "I can move"
    end
  end
  
  class Bird < Animal
    def move
      super + " by flying"
    end
  end
  
  class Human < Animal
    def move
      super + " by walking"
    end
  end
  
  class Penguin < Bird
    def move
      "I can move by swimming"
    end
  end