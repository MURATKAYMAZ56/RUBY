# allows you to mixxin behavior in a class
# behaves as a superclass
#makes a reference to

module Printable
  def print(item)
    "#{item} has been successfully printed"
  end
end

class Terminal
  include Printable
  attr_reader :name

  def initialize(name)
    @name = name
  end
end

terminal = Terminal.new("Term")
p terminal.print("page")
