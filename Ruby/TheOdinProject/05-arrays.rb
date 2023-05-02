# Learning Outcomes
# By the end of this lesson, you should be able to do the following:

# Describe what an array is, and explain why it’s useful.
# Describe two different ways of creating a new array.
# Explain how to access array elements using different methods.
# Explain three different ways to add data to an array.
# Explain how to remove elements from an array.

num_array = [1, 2, 3, 4, 5]
str_array = ["This", "is", "a", "small", "array"]

# Adding and Removing Elements
num_array = [1, 2]

num_array.push(3, 4)      #=> [1, 2, 3, 4]
num_array << 5            #=> [1, 2, 3, 4, 5]
num_array.pop             #=> 5
num_array                 #=> [1, 2, 3, 4]

# Shift and Unshift
num_array = [2, 3, 4]

num_array.unshift(1)      #=> [1, 2, 3, 4]
num_array.shift           #=> 1
num_array                 #=> [2, 3, 4]

# It’s also useful to know that both #pop and #shift can take integer arguments:

num_array = [1, 2, 3, 4, 5, 6]

num_array.pop(3)          #=> [4, 5, 6]
num_array.shift(2)        #=> [1, 2]
num_array   

# basic methods
[].empty?               #=> true
[[]].empty?             #=> false
[1, 2].empty?           #=> false

[1, 2, 3].length        #=> 3

[1, 2, 3].reverse       #=> [3, 2, 1]

[1, 2, 3].include?(3)   #=> true
[1, 2, 3].include?("3") #=> false

[1, 2, 3].join          #=> "123"
[1, 2, 3].join("-")     #=> "1-2-3"