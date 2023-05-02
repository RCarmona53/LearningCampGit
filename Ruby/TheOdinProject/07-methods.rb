# Learning Outcomes
# By the end of this lesson, you should be able to do the following:

# Explain how to create and call a new method.
# Explain how to pass variables to a method and how to define default parameters.
# Describe the differences between implicit return and explicit return.
# Explain what it means to chain methods together and how to do it.
# Explain what predicate methods are and how to use one.
# Explain what bang methods are and how to use one.

# Basic Method
def my_name
    "Joe Smith"
  end
  
  puts my_name    #=> "Joe Smith"

# Parameters
def greet(name)
    "Hello, " + name + "!"
  end
  
  puts greet("John") #=> Hello, John!

# Default parameter
def greet(name = "stranger")
    "Hello, " + name + "!"
  end
  
  puts greet("Jane") #=> Hello, Jane!
  puts greet #=> Hello, stranger!

# Return
def even_odd(number)
    if number % 2 == 0
      "That is an even number."
    else
      "That is an odd number."
    end
  end
  
  puts even_odd(16) #=>  That is an even number.
  puts even_odd(17) #=>  That is an odd number.

# For example, an explicit return can be useful when you want to write a method that checks for input errors before continuing.

def even_odd(number)
  unless number.is_a? Numeric
    return "A number was not entered."
  end
  
  if number % 2 == 0
    "That is an even number."
  else
    "That is an odd number."
  end
end
  
puts even_odd(20) #=>  That is an even number.
puts even_odd("Ruby") #=>  A number was not entered.

# A common source of confusion for new programmers is the difference between puts and return.

# puts is a method that prints whatever argument you pass it to the console.
# return is the final output of a method that you can use in other places throughout your code.

# Bang methods
puts whisper.downcase! #=> "hello everybody"
puts whisper #=> "hello everybody"