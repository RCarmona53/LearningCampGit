# Use of Include
module Foo
    def self.included(klass)
      puts "Foo has been included in class #{klass}"
    end
  end
  
  class Bar
    include Foo
  endv

# Use of extend
module Foo
    def method_in_module
         "The method defined in the module invoked"
    end
  end
  
  class Bar
    def initialize
      self.extend Foo
    end
  end

# The include method has a callback which is invoked whenever a module is included into another module/class - the included method.
# It is executed in the context of the mixin module and should be defined there. 
# Its signature is self.included(base) where base is the target class.

# While extend can be used to add instance methods to instances, we don't use that much. 
# However, unlike include, extend can be used to add methods to the classes themselves.

# I want you to use the above two points to solve the following challenge. 
# You have to modify the module Foo in the following exercise so that when you include it the class Bar, it also adds all the methods from ClassMethods into Bar as class methods.
module Foo
  def self.included(base)
     base.extend(ClassMethods)
  end
  
  module ClassMethods
    def guitar
      "gently weeps"
    end
  end
end
 
class Bar
  include Foo
end
 
 
puts Bar.guitar