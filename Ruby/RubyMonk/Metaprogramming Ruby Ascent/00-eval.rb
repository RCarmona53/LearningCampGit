# Eval

# Now, write any code in eval that returns a value that is greater than that stored in answer. 
# Make sure that the expression below becomes true.
answer < eval("answer + 1")

# assuming contents has the code 
# def code
#   7 + 6
# end

contents = Document.new('zen').get_contents
# we want to replace * with +
result = eval("contents.gsub('+', '*')")

# One of the major differences between eval and instance_eval is that with instance_eval you have the choice of explicitly handling the context of self. 
# As instance_eval is a method on Object it is scoped by the object you specify.

class Monk
end

# define a class method 'sum' on Monk using instance_eval
# that returns 49.
Monk.instance_eval("def sum; 49; end")

# Define a singleton method zen on the class Monk that returns 42.
class Monk
end
 
m = Monk.new
m.instance_eval do
  def zen
    42
  end
end

# Try this simple exercise similar to the last one from instance_eval. 
# Increment @zen to satisfy @zen == 42 through a method zen defined on an instance of Monk using class_eval.

class Monk
end
 
Monk.class_eval { def initialize; @zen = 41; end }
Monk.class_eval { def zen; @zen += 1; end }
