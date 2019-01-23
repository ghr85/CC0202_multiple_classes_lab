#codeclan week 02 day 02
#Lab & Later Homework
#Multiple Classes - Bus Stop
# Bus Class Test Spec

require('minitest/autorun') #require minitest
require('minitest/rg') # require minitest colourisation
require_relative('../bus.rb') # require related source code
require_relative('../person.rb') # require related source code

class TestBus < MiniTest::Test

  def setup
    @bus = Bus.new("22A", "Gretna")
    @person_1 = Person.new("Sandra Bullock", 38)
    @person_2 = Person.new("Keanu Reeves", 41)
  end


  def test_get_route
    assert_equal("22A",@bus.route_string)
  end
  def test_get_destination
    assert_equal("Gretna",@bus.destination_string)
  end

  def test_drive
    assert_equal("Weeeeeeee...",@bus.drive)
  end

  def test_passengers
    assert_equal(0, @bus.count_passengers) #count method will return only number of array elements
  end

  def test_add_passenger
    assert_equal(1, @bus.add_passenger(@person_1))
  end

  def test_remove_passenger
    @bus.add_passenger(@person_1)
    @bus.add_passenger(@person_2)
    assert_equal(1, @bus.remove_passenger(@person_1))
  end

  def test_find_passenger_by_name
    @bus.add_passenger(@person_1)
    assert_equal(true, @bus.find_passenger(@person_1))
  end

  def test_empty_bus
    @bus.add_passenger(@person_1)
    @bus.add_passenger(@person_2)
    @bus.empty_bus
    assert_equal(0, @bus.count_passengers)
  end
  end
