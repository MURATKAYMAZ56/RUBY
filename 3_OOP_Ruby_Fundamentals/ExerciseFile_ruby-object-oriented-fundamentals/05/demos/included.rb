module Tagged
  def tag(tag)
    @tags ||= []
    @tags << tag
  end

  def untag(tag)
    @tags.delete(tag) if !@tags.nil?
  end 

  attr_reader :tags
 
  module ClassMethods
    def find_by_tags(tagged_collection, tags)
      tagged_collection.filter {|c| tags & c.tags == tags }
    end 
  end 
  
  # The `included` hook method can be used to automatically 
  # mix in class methods when instance methods are mixed in with `include` 
  def self.included(base)
    base.extend ClassMethods
  end 
end

class Book
  include Tagged  # This mixes in both instance and class methods
end 

b1 = Book.new
b1.tag("software")
b1.tag("ruby")
b1.tag("testing")

b2 = Book.new
b2.tag("software")
b2.tag("python")
b2.tag("testing")

p Book.find_by_tags([b1, b2], ["testing", "ruby"])

