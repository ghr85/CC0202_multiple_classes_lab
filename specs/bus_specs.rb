#codeclan week 02 day 02
#Lab & Later Homework
#Multiple Classes - Bus Stop
# Bus Class Test Spec

require('minitest/autorun') #require minitest
require('minitest/rg') # require minitest colourisation
require_relative('../bus.rb') # require related source code

class TestBus < MiniTest::Test

  def setup
    @bus = Bus.new("22A", "Gretna")
  end


  def test_get_route
    assert_equal("22A",@bus.route_string)
  end
  
end
