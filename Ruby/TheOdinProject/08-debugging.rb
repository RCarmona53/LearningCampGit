# Learning Outcomes
# By the end of this lesson, you should be able to do the following:

# Describe what a stack trace is.
# Explain how you can use a stack trace to debug your code.
# Explain how you can use puts and Pry to debug your code.
# Explain how you should decide to start with debugging.

# Debugging with puts
def isogram?(string)
  original_length = string.length
  string_array = string.downcase.split
  unique_length = string_array.uniq.length
  original_length == unique_length
end

isogram?("Odin")

#=> false

# How to Start Debugging
# Programs generally go wrong due to two main reasons:

# The program encounters an error and won’t run. For example, a typo may cause a syntax error to be 
# raised that causes the program to crash. In this case, Ruby provides a stack trace.

# The program runs but does not work the way you expect. For example, you expect a method to return a 2, 
# but it actually returns 6 when you run it. In this case, there is no stack trace.