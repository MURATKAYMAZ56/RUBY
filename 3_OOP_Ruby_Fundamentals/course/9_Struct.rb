# A Struct in Ruby is one of the built-in classes which basically acts a little like a normal custom user-created class,
# but provides some nice default functionality and shortcuts when you don't need a full-fledged class.

# let see with and without Struct

# See how to do with STRUCT

=begin
SelectOption= Struct.new(:display, :value) do

    def to_array

        [display,value]
    end
end


option_struct= SelectOption.new("Canada(CAD)", "CAD")

puts option_struct.display
puts option_struct.value
=end
#see Without STRUCT

class SelectOption
  attr_accessor :display, :value

  def initialize(display, value)
    @display = display
    @value - value
  end

  def to_array
    [display, value]
  end
end

option_struct = SelectOption.new("America(USA)", :USA)
p option_struct.display
p option_struct.value
