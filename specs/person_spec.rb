#codeclan week 02 day 02
#Lab & Later Homework
#Multiple Classes - Bus Stop
# Person Class Test Spec

require('minitest/autorun') #require minitest
require('minitest/rg') # require minitest colourisation
require_relative('../person.rb') # require related source code

class TestPerson < MiniTest::Test

def setup
  @person = Person.new("Keanu Reeves", 41)
end

def test_get_name
  assert_equal("Keanu Reeves",@person.name)
end



end
