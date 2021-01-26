#Module is a colection af methods and constants
# A module can not be instantiated

=begin 
Module Functions
-Namespacing -Organize code
- Refinements - add or modify class functionality
- Mixins  - Reuse code and build class functionality

=end

module Log
  def met(agr)
    #some code...
  end

  # you can also have classes in module
  # ex: Logger class
  @logger = Logger.new

  def methh(arg2)
    @logger.log("whatsoever")
  end
end

#scope operator  ::
module Libra
  class Collection
  end
end

c = Libra ::Collection.new
