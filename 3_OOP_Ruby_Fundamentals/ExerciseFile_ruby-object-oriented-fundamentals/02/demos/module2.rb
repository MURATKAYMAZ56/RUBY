class Book
  # accessor definitions for book attributes
  attr_accessor :title 
  attr_accessor :author 
  attr_accessor :pub_year 
  attr_accessor :small_cover, :large_cover

  # constructor    
  def initialize(title:, author:, pub_year:)
    @title = title
    @author = author
    @pub_year = pub_year
  end
  
  def cover_url=(url)
    self.small_cover = url + "-small.jpg"
    self.large_cover = url + "-large.jpg"
  end 

  # author and author= define a virtual attribute
  def author
    "#{@author.last_name}, #{@author.first_name}"
  end
  
  def author=(last_first_name)
    last_name, first_name = last_first_name.split(/\s*,\s*/)
    @author = Author.find(first_name, last_name)
  end   

  # a class variable to keep track of the number of search queries
	@@search_count = 0
  
  # a class method to search for a book based on its title
	def self.find(title)
    @@search_count += 1
		Book.new(title: "Code", author: "Ruby Red", pub_year: 2020)
	end
  
  # a class-level accessor method to get the number of searches
	def self.search_count
		@@search_count
	end
  
end 

# Author class is used by Book.find
class Author 
  def self.find(first_name, last_name)
    Author.new
  end 
end 

# create an instance of the Book class
puts "Create an instance of the Book class:"
b = Book.new(pub_year: 2020, title: "Code", author: "Ruby Red")
p b

puts

# set the cover URL and retrieve the URL for a small image
puts "Set the cover URL and retrieve the URL for a small image:"
b.cover_url = "https://example.com/cover"
puts "-  b.small_cover:"
p b.small_cover


# a collection of books
class Collection
  # a class instance variables to keep track of the number of search queries
	@search_count = 0

  # a class method stub to search for books within a collection
	def self.find
		@search_count += 1
	end
  
  # a class-level accessor for the number of searches
	def self.search_count
		@search_count
	end
  
  # read-only attribute accessor definition
	attr_reader :name 

  # constructor
	def initialize(name)
		@name = name 
		@books = []
	end 

  # custom operator to retrieve a book based on its index
	def [](index)
		@books[index]
	end 

  # custom operator to replace a book at the specified index
	def []=(index, book)
		@books[index] = book
	end

  # custom append operator to add a book to collection
	def <<(book)
		@books << book
	end 
  
  # custom unary operator (not) - not advisable
	def !
		@books.empty?
	end

  # custom spaceship operator that delegates to String's <=>
	def <=>(other)
		name <=> other.name
	end 
  
  # custom equality operator
	def ==(other)
		name == other.name
	end 

  # eql? is typically aliased to the equality operator
	def eql?(other)
		self == other
	end
  
end

# Series is a specialised type of collection 
# so it inherits from the Collection class 
class Series < Collection
  # class instance variable to keep track of the number of searches;
  # it has to be initialized in each subclass 
	@search_count = 0
end

puts 

# perform searches in collections and retrieve search counts 
# to verify that they are independent
puts "Track search counts across collections and series:"
Collection.find
Series.find
Series.find
puts "- collections:"
p Collection.search_count
puts "- series:"
p Series.search_count

puts

# create a collection and populate it with books using 
# the append operator
puts "Populate a collection with books:"
c = Collection.new("Software")
c << Book.new(title: "Code", author: "Ruby Red", pub_year: 2020)
c << Book.new(title: "Testing", author: "Ruby Red", pub_year: 2018)
p c

puts 

# use the collection's custom "not" operator (not advisable)
puts "Check if a collection is empty:"
c = Collection.new("Empty")
if !c
	puts "Collection #{c.name} is empty."
end

puts 

# create two collections and compare them
puts "Create two collections and compare them:"
fiction = Collection.new("Fiction")
science = Collection.new("Science")
puts "- fiction <=> science:"
p fiction <=> science #=> -1 

puts

# create two collections and compare them using comparison methods
puts "Create two collections and compare them using comparison methods:"
c1 = Collection.new("Fiction")
c2 = Collection.new("Fiction")
puts "- c1 == c2:"
p c1 == c2  #=> true
puts "- c1.eql?(c2):"
p c1.eql?(c2)  #=> true
puts "- c1.equal?(c2):"
p c1.equal?(c2)  #=> false


# define a method stub to generate collection HTML 
def collection_html(collection)
	case collection
	when Series
		# return series-specific HTML 
	when Collection
		# return generic collection HTML 
  end
end

puts 

# check the class of a Series instance using two different methods
puts "Check the class of a Series instance using two different methods:"
series = Series.new("Ruby Programming")
puts "- series.kind_of?(Collection):"
p series.kind_of?(Collection)  #=> true
puts "- series.kind_of?(Series):"
p series.kind_of?(Series)  #=> true

puts "- series.instance_of?(Collection):"
p series.instance_of?(Collection)  #=> false
puts "- series.instance_of?(Series):"
p series.instance_of?(Series)  #=> true
