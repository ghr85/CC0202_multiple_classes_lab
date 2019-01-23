#codeclan week 02 day 02
#Lab & Later Homework
#Multiple Classes - Bus Stop
# Bus Stop Class Test Spec


# Create a new class called BusStop. This should have a name attribute.
# Add an attribute to the BusStop called 'queue'.
# This should be an empty array that will get filled with instances of the Person class.
# Add a method that adds a person to the queue.
#
# Now imagine that our bus is travelling along the route.
# For now we will imagine that there is only one bus that goes on this route, so every passenger waiting at
# each stop wants to get on the bus.
#
# Try writing a method that the bus would call, to collect all of the passengers from a stop. This might look like bus.pick_up_from_stop(stop1). This should take all of the passengers waiting in line at the stop, and put them inside of the bus. So the stop will now have nobody in the queue, and the number of people on the bus will increase by however many people the stop had at it.

require('minitest/autorun') #require minitest
require('minitest/rg') # require minitest colourisation
require_relative('../person.rb') # require related source code
require_relative('../bus.rb') # require related source code
require_relative('../bus_stop.rb') # require related source code


class TestBusStop < MiniTest::Test
  def setup
    @bus_stop_object = BusStop.new("Torry Battery")
    @bus_object = Bus.new("22A", "Gretna")
  end

end
