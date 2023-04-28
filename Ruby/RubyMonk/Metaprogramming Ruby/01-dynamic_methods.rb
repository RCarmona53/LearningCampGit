class Nomad
    def initialize(glider)
      @glider = glider
    end
   
    def do(action, argument = nil)
      if argument == nil
        @glider.send(action)
      else
        @glider.send(action, argument)
      end
    end
  end
  
  class Initiate
      def initialize(secretive_monk)
        @secretive_monk = secretive_monk
      end
      
      def	meaning_of_life
        # change this line to sneakily call `meaning_of_life`, even though
        # it is a private method.
        @secretive_monk.send(:meaning_of_life)
      end
    end
  
  # Relay Messages
  # In this exercise we've defined a method relay. 
  # It accepts two parameters - an array of values, and a data_type. 
  # The relay method should return a new array, but with all elements converted to data_type.
    
  # That means if I pass in an array of numbers, and specify the data_type as s (which stands for 'string'), 
  # the method should return another array with all elements converted to strings. 
  # This can be done by calling to_s on every element in the array.
    
  def relay(array, data_type)
    array.map {|s| s.send("to_#{data_type}") }
  end

# Method Missing

# Ruby gives you the option to accept yet another argument to the method_missing method, &block. 
# Therefore your signature now looks like method_missing(sym, *args, &block).

class Spy
  def method_missing(sym, *args, &block)
    puts "#{sym} was called with #{args} and #{block}"
  end
end

class MethodCall
    def initialize(sym, args)
      @sym = sym
      @args = args
    end
    
    def sym
      @sym
    end
    
    def args
      @args
    end
    
    def ==(other_call)
      @sym == other_call.sym && @args == other_call.args
    end
  end
  
  class Spy
    def initialize
      @method_calls = []
    end
    
    def method_missing(sym, *args, &block)
      @method_calls << MethodCall.new(sym, args)
    end
  
    def method_called?(sym, *args)
      @method_calls.include?(MethodCall.new(sym, args))
    end
  end

# Every object in Ruby defines a send method. 
# The first argument you pass to it is the method you wish to call, and the arguments after that are the arguments you wish to pass to the method.

class Spy
  def initialize(enemy_agent)
    @enemy_agent = enemy_agent
  end
  
  def method_missing(method_name, *args, &block)
    @enemy_agent.send(method_name, *args)
  end
end

# Create a class Monk which can meditate on life, the universe or everything. 
# It should have three methods meditate_on_life, meditate_on_the_universe 
# & meditate_on_everything and returns strings of "I know the meaning of life", "I know the meaning of the universe", and "I know the meaning of everything", respectively.

class Monk
  ["life", "the_universe", "everything"].each do |action|
    define_method("meditate_on_#{action}") do
      "I know the meaning of #{action.gsub(/_/," ")}"
    end
  end
end