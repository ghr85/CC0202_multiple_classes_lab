#codeclan week 02 day 02
#Lab & Later Homework
#Multiple Classes - Bus Stop
# Bus Stop Class

class BusStop
  attr_reader :name_string
  attr_accessor :queue_array

  def initialize(name_string)
    @name_string = name_string
    @queue_array = []
  end
end
