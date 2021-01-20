class User
  def initialize(name)
    @name = name
  end 
  
  attr_accessor :name
end 

class Author < User
end 


c = Author.new("Ruby Red")     # the initialize method is inherited 
puts "Author name: #{c.name}"  # and so are the other methods


# Classes inherit from Object unless another superclass is specified
puts "User superclass: #{User.superclass}"

# Object inherits from BasicObject
puts "Object superclass: #{Object.superclass}"

# BasicObject is at the root of the class hierarchy
puts "BasicObject superclass: #{BasicObject.superclass.inspect}"

