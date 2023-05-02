# methods_added
class Dojo
    @@methods_added = []
    
    def self.methods_added
      @@methods_added
    end
    
    def self.method_added(method_name)
      @@methods_added << method_name
    end
end

# singleton_methods_added
class Dojo
    @@singleton_methods_added = []
    
    def self.singleton_methods_added
      @@singleton_methods_added
    end
    
    def self.singleton_method_added(method_name)
      @@singleton_methods_added << method_name
    end
  end

# creating a new method called tai_kyo_kyu on AN_OBJECT alone adds the method to singleton_methods_added, but not to methods_added
AN_OBJECT = Object.new

def AN_OBJECT.methods_added
  @@methods_added ||= []
end

def AN_OBJECT.singleton_methods_added
  @@singleton_methods_added ||= []
end

def AN_OBJECT.singleton_method_added(method_name)
  singleton_methods_added << method_name
end
def AN_OBJECT.method_added(method_name)
  methods_added << method_name
end

# methods_removed
class Dojo
    @@methods_removed = []
    
    def self.methods_removed
      @@methods_removed
    end
  
    def self.method_removed(name)
      @@methods_removed << name
    end
    
    def tai_kyo_kyu
    end
    
    def pinan_shodan
    end
  end

# singleton_methods_removed
class Dojo
    @@singleton_methods_removed = []
    
    def self.singleton_methods_removed
      @@singleton_methods_removed
    end
    
    def self.singleton_method_removed(name)
      @@singleton_methods_removed << name
    end
    
    def self.tai_kyo_kyu
    end
    
    def self.pinan_shodan
    end
  end

# methods_undefined
class Dojo
    @@methods_undefined = []
    
    def self.methods_undefined
      @@methods_undefined
    end
  
    def self.method_undefined(name)
      @@methods_undefined << name
    end
  
    def tai_kyo_kyu
    end
    
    def pinan_shodan
    end
  end

# singleton_methods_undefined
class Dojo
    @@singleton_methods_undefined = []
    
    def self.singleton_methods_undefined
      @@singleton_methods_undefined
    end
    
    def self.singleton_method_undefined(name)
      @@singleton_methods_undefined << name
    end
    
    def self.tai_kyo_kyu
    end
    
    def self.pinan_shodan
    end
  end 


# Module inclusion
module SparringArea
    @@included_into = []
    
    def self.included_into
        @@included_into  
    end
    
    def self.included(class_or_module)
      @@included_into << class_or_module
    end
end

# Object extension

class Dojo
end

module SparringArea
  @@extended_objects = []
  
  def self.extended_objects
  	@@extended_objects
  end
  
  def self.extended(objet)
    @@extended_objects << objet
  end
end

A_DOJO = Dojo.new
ANOTHER_DOJO = Dojo.new

# Inheritance
class Room
    @@subclasses = []
    
    def self.subclasses
      @@subclasses
    end
    
    def self.inherited(subclass)
      @@subclasses << subclass
    end
  end
# Final exercise
  module Gym
    def self.included(class_or_module)
      class_or_module.send(:include, InstanceMethods)
      class_or_module.extend(ClassMethods)
    end
    
    module ClassMethods
      def build
      end
    end
    
    module InstanceMethods
      def open
      end
      
      def book_for_practice
      end
      
      def close
      end
    end
end