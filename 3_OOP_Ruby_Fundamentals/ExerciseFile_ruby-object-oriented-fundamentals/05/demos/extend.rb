module Tagged
  def tag(tag)
    @tags ||= []
    @tags << tag
  end

  def untag(tag)
    @tags.delete(tag) if !@tags.nil?
  end 

  attr_reader :tags
 
  # It's common to put class methods into a ClassMethods sub-module
  module ClassMethods
    def find_by_tags(tagged_collection, tags)
      tagged_collection.filter {|c| tags & c.tags == tags }
    end 
  end 
end

class Collection
  include Tagged                # mix in instance methods
  extend Tagged::ClassMethods   # mix in class methods
end 

c1 = Collection.new
c1.tag("software")
c1.tag("ruby")
c1.tag("testing")

c2 = Collection.new
c2.tag("software")
c2.tag("python")
c2.tag("testing")

p Collection.find_by_tags([c1, c2], ["testing", "ruby"])

