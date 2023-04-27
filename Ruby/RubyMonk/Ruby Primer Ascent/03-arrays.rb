# Finish this method to return an array. 
# The method accepts only a two-dimensional array. 
# The elements of the array that this method returns are the sums of the first two elements of each inner-array of the two-dimensional array that is passed in.
def compute(ary)
    return nil unless ary
    ary.map { |(a, b)| !b.nil? ? a + b : a }
end

# Now write an exercise to calculate the median from a set of numbers. Assuming that median method takes in the list as arguments passed in.
def median(*list)
    return nil if list.empty?
    
    mid = list.length / 2
    slist = list.sort
    
    if slist.length.odd?
      slist[mid]
    else
      (slist[mid - 1] + slist[mid]).to_f / 2.0
    end
  end

# Write a method that counts the number of elements of the array that is being passed in, 
# only if the index of the number 42 in the one-dimensional representation of the array is 5.
def zen(array)
  converted = array.compact.flatten
  converted.index(42) == 5 ? converted.count : nil
end

# Write a method that takes an array argument, slices off the last two elements and returns a string of those two elements separated by "|".
def few2last(array)
  array.slice(-2..-1).join("|")
end

# Stacking
# array[0] would always be the bottom of our stack. array[n] will be the top of the stack.
# size method will keep track of the size of our stack.
# push should always return self. pop should always return the value of the popped element.

# Make the Stack class statically sized. push and pop should return nil if the stack is overflowing or underflowing respectively. 
# Implement private predicate methods full? and empty? and public method size that returns the length of the stack, and look that returns the value on the top of the stack.

class Stack
  def initialize(size)
    @size = size
    @store = Array.new(@size)
    @top = -1
  end
  
  def pop
    if empty?
      nil
    else
      popped = @store[@top]
      @store[@top] = nil
      @top = @top.pred
      popped
    end
  end
  
  def push(element)
    if full? or element.nil?
      nil
    else
      @top = @top.succ
      @store[@top] = element
      self
    end
  end
  
  def size
    @size
  end
  
  def look
    @store[@top]
  end
  
  private
  
  def full?
    @top == (@size - 1)
  end
  
  def empty?
    @top == -1
  end
end

# Write your own implementation of a Queue that is also statically sized. 
# Like in the stack exercise before, enqueue and dequeue should return nil for overflow or underflow.

class Queue
  def initialize(size)
    @size = size
    @store = Array.new(@size)
    @head, @tail = -1, 0
  end
  
  def dequeue
    if empty?
      nil
    else
      @tail = @tail.succ
 
      dequeued = @store[@head]
      @store.unshift(nil)
      @store.pop
      dequeued
    end
  end
  
  def enqueue(element)
    if full? or element.nil?
      nil
    else
      @tail = @tail.pred
      @store[@tail] = element
      self 
    end
  end
  
  def size
    @size
  end
  
  private
  
  def empty?
    @head == -1 and @tail == 0
  end
 
  def full?
    @tail.abs == (@size)
  end
end

# A customer will call the place_order method, which you'll have to pass on to the chef robot with your robot's name.
# The chef will then call your robot's serve method when the customer's sandwich is ready. 
# Your robot needs to serve the correct sandwich/drink combo to the correct table at that point from the chef's sloppy data format.

class WaiterRobot
 
  def initialize(chef, tables)
    @chef = chef
    @tables = tables
    @name = "Tyler Durden"
  end
  
  def name
    @name
  end
  
  def place_order(table_number, sandwich, drink)
    order = {:table => table_number, :sandwich => sandwich, :drink => drink}
    @chef.new_order(self, order)
  end
  
  def serve(order)
    # digest the chef's sloppy order instructions:
    # 1) find the table number you need to serve
    o = Hash[*order]
    table_number = o[:table]
    table = @tables[table_number]
    
    # 2) call Table#serve_sandwich and Table#serve_drink
    table.serve_sandwich(o[:sandwich])
    table.serve_drink(o[:drink])
  end
  
end

# Create diferent first name, last name conbinations
CHARACTERS = ["Joey Jeremiah", "Snake Simpson", "Wheels", "Spike Nelson", "Arthur Kobalewscuy", "Caitlin Ryan", "Shane McKay", "Rick Munro", "Stephanie Kaye"]

def degrassi_couples
  all = CHARACTERS.product(CHARACTERS)
  all.reject {|c| c.first == c.last}
end

# There's one other pseudo-matrix operation that comes in handy when you have data which is coincidentally shaped like a matrix: Array#transpose.
# Transposing a matrix is just rotating it on an axis. 
# Use this transformation to pass an array to a row-based printer. 
# By "row-based", we mean only two elements per child array. 
# The array you'll receive from the caller will be column-based. 
# By "column-based", we mean there are only two child arrays, each with N elements -- where N is the number of rows.

class Announcements
  def initialize(printer)
    @printer = printer
  end
  
  def notify_user(column_table)
    row_table = column_table.transpose
    @printer.print_with_ink(row_table)
  end
end