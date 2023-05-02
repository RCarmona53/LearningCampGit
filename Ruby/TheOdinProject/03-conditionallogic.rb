# Learning Outcomes
# By the end of this lesson, you should be able to do the following:

# Describe and list falsy values.
# Explain how to use if, elsif, and else.
# Explain the difference between if and unless.
# Describe what ||, &&, and ! do.
# Explain what short circuit evaluation is.
# Describe what the ternary operator is and how to use it.
# Explain what a case statement is and how it works.

if statement_to_be_evaluated == true
    # do something awesome...
end
      
if 1 < 2
    puts "Hot diggity, 1 is less than 2!"
end

# Else if
if attack_by_land == true
  puts "release the goat"
else
  puts "release the shark"
end

# Logicals
if 1 < 2 && 5 < 6
    puts "Party at Kevin's!"
  end
  
  # This can also be written as
  if 1 < 2 and 5 < 6
    puts "Party at Kevin's!"
  end

  if 10 < 2 || 5 < 6 #=> although the left expression is false, there is a party at Kevin's because the right expression returns true
    puts "Party at Kevin's!"
  end
  
  # This can also be written as
  if 10 < 2 or 5 < 6
    puts "Party at Kevin's!"
  end

# Unless
age = 19
puts "Welcome to a life of debt." unless age < 18

unless age < 18
  puts "Down with that sort of thing."
else
  puts "Careful now!"
end