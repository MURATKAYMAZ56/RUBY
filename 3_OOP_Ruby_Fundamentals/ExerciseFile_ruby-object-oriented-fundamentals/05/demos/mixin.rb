module Tagged
  def tag(tag)
    @tags ||= []
    @tags << tag
  end

  def untag(tag)
    @tags.delete(tag) if !@tags.nil?
  end 

  attr_reader :tags
end

class Book
  attr_reader :name
  def initialize(name)
    @name = name
  end

  # The spaceship operator in order to use Enumerable methods
  # to sort books in a collection
  def <=>(other)
    name <=> other.name
  end 
end

class Collection
  include Tagged 
  include Enumerable   # It's fine to mix in multiple modules

  def initialize()
    @books = []
  end 
  
  # Custom append operator to add a book to collection
  def <<(book)
    @books << book
  end 

  # Enumerable module requires the class to provide `each`
  # so that Enumerable methods can access items in the collection
  def each(&block)
    @books.each {|book| block.call(book) }
  end 
  
end 

c = Collection.new 

c.tag("ruby")
c.tag("testing")

puts "Collection tags: #{c.tags}"

c.untag("ruby")

puts "Collection tags without \"ruby\": #{c.tags}"

# Add tagging to books
class Book
  include Tagged
end 

# Now a book can also be tagged
b = Book.new("Code")
b.tag("ruby")
puts "Book tags: #{b.tags}"