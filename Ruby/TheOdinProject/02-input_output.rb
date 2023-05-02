# Learning Outcomes
# By the end of this lesson, you should be able to do the following:

# Differentiate between the print and puts commands.
# Describe the method used to get input from the user.

# As you can see, the puts and print commands are quite similar, but you should have already noticed the 
# small difference between the two: puts appends a new line to the argument passed in, whereas print keeps 
# things all on one line. A very important thing to notice for both commands is that after printing whatever 
# argument they are passed, puts and print both return nil.

irb(main):001:0> print "Learning to code is FUN!"
Learning to code is FUN!=> nil

irb(main):002:0> print "1234"
1234=> nil

# We can also use the puts command:

irb(main):001:0> puts "Learning to code is cool!!"
Learning to code is cool!!
=> nil

irb(main):002:0> puts "Hey, I want 2 key lime pies."
Hey, I want 2 key lime pies.
=> nil

irb(main):003:0> x = "My name is ALEX! :)"
=> "My name is ALEX! :)"

irb(main):004:0> puts x
My name is ALEX! :)
=> nil

# Input commands
irb(main):001:0> new_string = gets.chomp
This is a sentence.
=> "This is a sentence."

irb(main):002:0> puts new_string
This is a sentence.
=> nil