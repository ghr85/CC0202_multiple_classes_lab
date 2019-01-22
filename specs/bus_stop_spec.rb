#codeclan week 02 day 02
#Lab & Later Homework
#Multiple Classes - Bus Stop
# Bus Stop Class Test Spec

require('minitest/autorun') #require minitest
require('minitest/rg') # require minitest colourisation
require_relative('../bus_stop.rb') # require related source code

class TestBusStop < MiniTest::Test
  def setup
    @bus = Bus.new("22A", "Gretna")
  end
  
end
