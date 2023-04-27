# Example Code:
p STDOUT.class
p STDOUT.fileno
  
p STDIN.class
p STDIN.fileno

p STDERR.class 
p STDERR.fileno
p STDOUT.class
p STDOUT.fileno
  
p STDIN.class
p STDIN.fileno
 
p STDERR.class 
p STDERR.fileno

# We can use the StringIO class to easily fake out the IO objects. 
# Try to capture STDERR so that calls to warn are redirected to our custom StringIO object.
capture = StringIO.new
$stderr = capture

# To write to an I/O stream, we can use IO write (or, in our case, File#write) and pass in a string. 
# It returns the number of bytes that were written. Try calling the method that writes "Bar" to a file named disguise.
File.open("disguise", "w") do |f|
    f.write "Bar"
  end