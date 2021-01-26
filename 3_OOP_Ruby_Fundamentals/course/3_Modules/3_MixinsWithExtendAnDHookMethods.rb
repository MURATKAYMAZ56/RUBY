module TaggedFind
  def find_by_tags(arg)
    #code...
  end
end

class Book
  extend TaggedFind
end

Book.find_by_tags(arg)

# you can have module in module
# when you call these 2 module in a class
# include parentModule
#extend parentModule::childModule

#Hook Methods
