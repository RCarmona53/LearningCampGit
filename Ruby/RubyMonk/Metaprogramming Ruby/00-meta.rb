# Metaprogramming is the act of writing code that operates on code rather than on data. This involves inspecting and modifying a program as it runs using constructs exposed by the language.

# In the example below, here are some of the "meta" changes we're making to the program:

# Reopening classes: Add a method named foldl to Ruby's native Array class
# Programmatic method invocation: Use send to call a method by name programmatically
# The end result is the ability to combine the elements of any array containing any type of object in fairly arbitrary ways.

# Ruby's String has no method that allows you to split a sentence into an Array of words. 
# Let's add a method called words to String to do just this. 
# If you're not sure about how to split a string, take a look at our lesson on string manipulation in the "Ruby Primer" first.

class String
  def words
    split(' ')
  end
end

# Ruby gives a convenient way for you to call any method on an object by using the send method. send takes, as its first argument, the name of the method that you want to call. This name can either be a symbol or a string.

class Nomad
  def initialize(glider)
    @glider = glider
  end
 
  def do(action)
    @glider.send(action)
  end
end

# Additionally, now some of these actions require further arguments. e.g. 
# The command to 'bank' takes a string of either 'left' or 'right', while the command to 'roll' takes the number of degrees it should dive for. 
# Again, send gives us a convenient way to pass arguments to these methods. 
# All further arguments to send after the first (which you'll recall has the name of the method you want called itself) become arguments that get passed down to that method.

