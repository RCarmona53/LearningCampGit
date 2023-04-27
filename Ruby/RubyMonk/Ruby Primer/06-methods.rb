# Write a method called add_two that adds 2 to any number passed to it and returns the result. 
# Yes, please feel free to experiment using next in addition to the more obvious route of simply adding the integer 2 to the incoming number.

def add_two(number)
    n = number + 2
    puts n
end

add_two(15)

# Show Qui-Gon Jinn
def say_hello(name = "Qui-Gon Jinn")
    "Hello, #{name}."
end


# Show names with age and gender
def introduction(age, gender, *names)
    puts "Meet #{names.join(' ')}, who's #{age} and #{gender}"
end

introduction(26, "Men", "Rodrigo Gaston Carmona")

# Write three methods calculate, add and subtract. The tests should all pass. 
# Take a look at the hint if you have trouble! And as a little extra hint: remember that you can use something.is_a?(Hash) or another_thing.is_a?(String) to check an object's type.
def add(*numbers)
    puts numbers.inject(0) { |sum, number| sum + number }  
  end
  
  def subtract(*numbers)
    current_result = numbers.shift
    puts numbers.inject(current_result) { |current_result, number| current_result - number }  
  end
  
  def calculate(*arguments)
    # if the last argument is a Hash, extract it 
    # otherwise create an empty Hash
    options = arguments[-1].is_a?(Hash) ? arguments.pop : {}
    options[:add] = true if options.empty?
    return add(*arguments) if options[:add]
    return subtract(*arguments) if options[:subtract]
end

add(4,5)
subtract(4,5)
calculate(4,5)