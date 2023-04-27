# The Debugging Primaries

def describe(user_info)
    "My name is #{user_info["name"]} and I'm #{user_info["age"]} years old."
  
end

# Now, let's look at a slightly elaborate exercise. 
# I've implemented the class DrivingLicenseAuthority that decides whether to grant a license to applicants or not.
# But unfortunately, it is buggy. 
# I'm not going to tell you all the details so you'll have to find out where things are breaking and why - the tests are pretty bland. The goal is to get all the tests to pass. Remember, p is your friend.
class VisualAcuity
    def initialize(subject, normal)
      @subject = subject
      @normal = normal    
      p "@subject = #{@subject}"
      p "@normal = #{@normal}"   
    end
    def can_drive?
      p "@subject dans can_drive? = #{@subject}"
      p "@normal dans can_drive? = #{@normal}"
      return true if @subject.is_a?(String)
      (@subject / @normal) >= 0.5
    end  
  end
  
  class DrivingLicenseAuthority
    def initialize(name, age, visual_acuity)
      @name = name
      @age = age
      @visual_acuity = visual_acuity
    end
    
    def valid_for_license?
          @age >= 18
    end
    
    def verdict
      if valid_for_license? && @visual_acuity.can_drive?
          "#{@name} can be granted driving license"
      else
        "#{@name} cannot be granted driving license"
      end
    end
  end

# Logging   

# We'll end this lesson with an exercise. 
# I've implemented an Order class that procures, packs and ships an order. 
# You have to instrument the order so that during each step, an appropriate log is produced. 
# Each log should contain the new state of the order and any new information passed to it during that step. 
# You should use info as your severity level for normal logs. For exceptions, use error.

class Order
  def initialize(order_items, customer)
    @logger = Logger.new($stdout)
    @order_items = order_items
    @customer = customer
    @state = :new
    @logger.info "New order from #{@customer}"
  end
 
  def procure(vendor)
    if @state == :new
      @vendor = vendor
      @state = :procured
      @logger.info "Order procured from #{@vendor}"
    else
      @logger.error "You can procure only new orders"
    end
  end
 
  def pack
    if @state == :procured
      @state = :packed
      @logger.info "Order packed"
    else
      @logger.error "You can't pack before procuring"
    end
  end
 
  def ship(address)
    if @state == :packed
      @state = :shipped
      @shipping_address = address
      @logger.info "Order shipped to #{@shipping_address}"
    else
      @logger.error "You can't ship before packing"
    end
  end
end
 
order = Order.new(["mouse", "keyboard"], "Asta")
order.procure("Awesome Supplier")
order.pack
order.ship("The Restaurant, End of the Universe")
 
# And now, I want you to use Ruby's super-awesome blocks to create a method which takes in a block, executes it, and returns the time it took.

def benchmark(&block)
  begin_time = Time.now
  block.call
  end_time = Time.now
  end_time - begin_time
end
 
time_taken = benchmark do
  sleep 0.1
end
puts "Time taken #{time_taken}"
 