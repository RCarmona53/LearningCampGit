# Getter and Setters
class Item
    def initialize(item_name, quantity)
      @item_name = item_name
      @quantity = quantity
    end
    
    def quantity=(new_quantity)
      @quantity = new_quantity
    end
    
    def quantity
      @quantity
    end  
  end
  
  item = Item.new("a",1)
  item.quantity = 3
  p item.quantity

  # The next exercise is to build one such class ApplicationConfiguration. 
  # You have to define two class-level methods: set and get. 
  # The set method takes two parameters: property_name and value. 
  # The get method takes one parameter: property_name, and should return the value that corresponds to the property.
  class ApplicationConfiguration
    @@configuration = {}
  
    def self.set(property_name, value)
      @@configuration[property_name] = value
    end
    
    def self.get(property_name)
      @@configuration[property_name]
    end  
  end
  
  ApplicationConfiguration.set("name", "Demo Application")
  ApplicationConfiguration.set("version", "0.1")
  
  p ApplicationConfiguration.get("version")

# Use class instance variables! Also remember to initialize it in all child classes.
  class ApplicationConfiguration
    @configuration = {}
  
    def self.set(property, value)
      @configuration[property] = value
    end
  
    def self.get(property)
      @configuration[property]
    end
  end
  
  class ERPApplicationConfiguration < ApplicationConfiguration
    @configuration = {}
  end
  
  class WebApplicationConfiguration < ApplicationConfiguration
    @configuration = {}
  end
  
  ERPApplicationConfiguration.set("name", "ERP Application")
  WebApplicationConfiguration.set("name", "Web Application")
  
  p ERPApplicationConfiguration.get("name")
  p WebApplicationConfiguration.get("name")
  
  p ApplicationConfiguration.get("name")

# Instance variables are available only for instances of a class. They look like @name. 
# Class variables are available to both class methods and instance methods. They look like @@name
# It is almost always a bad idea to use a class variable to store state. 
# There are only a very few valid use cases where class variables are the right choice.
# Prefer class instance variables over class variables when you do really need store data at a class level. 
# Class instance variables use the same notation as that of an instance variable. But unlike instance variables, you declare them inside the class definition directly.


# Define a == method that compares the state of your object with that of the other one and returns a boolean value.
# Define a eql? method that simply calls the == to do the actual comparison.
# Define a hash method that returns the result of XORing (using the ^ operator) the hash of all that instance variables which together determine the state of the object.
class Item
  
    attr_reader :item_name, :quantity, :supplier_name, :price
    
    def initialize(item_name, quantity, supplier_name, price)
      @item_name = item_name
      @quantity = quantity
      @supplier_name = supplier_name
      @price = price
    end 
    
    def ==(other_item)
      @item_name == other_item.item_name &&
      @quantity == other_item.quantity &&
      @supplier_name == other_item.supplier_name &&
      @price == other_item.price
    end
    
    def eql?(other_item)
      self == other_item
    end
    
    def hash
      @item_name.hash ^ @quantity.hash ^ @supplier_name.hash ^ @price.hash
    end    
  end

# In the following exercise, override the to_s method of the Item class so that it returns a string with both the item's name and quantity.
  class Item
    def initialize(item_name, qty)
      @item_name = item_name
      @qty = qty
    end
    
    def to_s
      "item_name: #{@item_name}\nqty: #{@qty}"
    end
  end
  
  item = Item.new("a",1)
  
  puts item
  p item

# YAML Example

class Ogre
    def initialize(strength, speed)
      @strength = strength
      @speed = speed
    end
    
    # this is reminiscent of our old friend, CerealBox#from_s
    def self.deserialize(yaml_string)
      YAML::load(yaml_string)
    end
    
    # and this is a much-simplified version of our CerealBox#to_s
    def serialize
      YAML::dump(self)
    end
    
    # now we're free to define #to_s however we like!
    # ...which is great, because #to_s is for programmers to read, 
    # not computers or users
    def to_s
      "Ogre: [strength = #{@strength}, speed = #{@speed}]"
    end
  end
  
  wendigo = Ogre.new(47, 3)
  yaml = wendigo.serialize
  puts "The yaml looks like this:"
  p yaml
  puts "It's just a boring old string: #{yaml.class}"
  puts "...and it's easy to change back: #{Ogre.deserialize(yaml)}"
  puts
  
  shrek = Ogre.new(62, 12)
  fiona = Ogre.new(66, 37)
  ogres = [shrek, fiona]
  puts "We can even serialize arrays! They're just another object. #{ogres}"