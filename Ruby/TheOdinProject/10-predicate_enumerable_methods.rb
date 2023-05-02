# Learning Outcomes
# By the end of this lesson, you should be able to do the following:

# Describe what a predicate enumerable method is.
# Explain how the #include? method works.
# Explain how the #any? method works.
# Explain how the #all? method works.
# Explain how the #none? method works.

# Include? Method
numbers = [5, 6, 7, 8]

numbers.include?(6)
#=> true

numbers.include?(3)
#=> false

# Any? Method
numbers = [21, 42, 303, 499, 550, 811]

numbers.any? { |number| number > 500 }
#=> true

numbers.any? { |number| number < 20 }
#=> false

# All? Method
fruits = ["apple", "banana", "strawberry", "pineapple"]

fruits.all? { |fruit| fruit.length > 3 }
#=> true

fruits.all? { |fruit| fruit.length > 6 }
#=> false

# None? Method
fruits = ["apple", "banana", "strawberry", "pineapple"]

fruits.none? { |fruit| fruit.length > 10 }
#=> true

fruits.none? { |fruit| fruit.length > 6 }
#=> false