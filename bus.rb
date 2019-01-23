#codeclan week 02 day 02
#Lab & Later Homework
#Multiple Classes - Bus Stop
# Bus Class

class Bus
  attr_reader :route_string, :destination_string

  def initialize(route_string,destination_string)
    @route_string = route_string
    @destination_string = destination_string
    @passengers_array = [] # Doesn't need a paramter as no passengers at initialisation
  end

  def drive
    return "Weeeeeeee..."
  end

  def count_passengers
    return @passengers_array.count # do count function (solution gives length)
  end

  def add_passenger(passenger)
    @passengers_array << passenger # add passenger parameter to array
    return count_passengers #calling function from above
  end

  def remove_passenger(passenger_object)
    for person_object_element in @passengers_array
      if person_object_element.name == passenger_object.name
        @passengers_array.delete(passenger_object)
      end
    end
    return count_passengers #calling function from above
  end

  def find_passenger(passenger_object)
    @passengers_array.include?(passenger_object)
  end

  def empty_bus
   old_passenger = [] #these functions link into the later bust stop class
   old_passenger << (@passengers_array) #consider changing to FOR loop to break array within array
   @passengers_array.clear
   return @passengers_array
  end
end
