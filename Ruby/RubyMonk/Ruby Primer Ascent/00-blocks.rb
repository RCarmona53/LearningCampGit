# Blocks aren't unique to Ruby. The official (language agnostic) definition of blocks is "A section of code which is grouped together." 
# Of course, I'm guessing this doesn't help you much.

A simpler way to describe blocks is “A block is code that you can store in a variable like any other object and run on demand.”

Addition = lambda {|a, b| return a + b } # use this as your example!

Subtraction = lambda {|a, b| return a - b  } # your code between the braces

Multiplication = lambda { |a, b| return a * b } # your code between the braces

Division = lambda {|a, b| return a / b  } # your code between the braces

# Yield
def calculation(a, b)
    yield(a, b)
  end
  
  puts calculation(5, 6) { |a, b| a + b } # addition
  puts calculation(5, 6) { |a, b| a - b } # subtraction

# A block created with lambda behaves like a method when you use return and simply exits the block, handing control back to the calling method.
def a_method
    lambda { return "we just returned from the block" }.call
    return "we just returned from the calling method"
   end
   
   puts a_method

# A block created with Proc.new behaves like it’s a part of the calling method when return is used within it, and returns from both the block itself as well as the calling method.
def a_method
    Proc.new { return "we just returned from the block" }.call
    return "we just returned from the calling method"
   end
   
   puts a_method

# Implicitly when invoking a method
# Explicitly using the Kernel#lambda factory method
# Explicitly using Proc.new