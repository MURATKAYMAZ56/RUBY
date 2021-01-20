Genre = Struct.new(:name, :description) do 
  def display
    puts "#{name}: #{description}"
  end
end

class Collection
  def initialize(name)
    @name = name
  end 
  
  def display(format)
    puts "== #{@name} =="
    puts "Showing books in a #{format} view"
  end 
end 

class Series < Collection
  # Override Collection display method to show extra information
  def display(format)
    puts "Series description"
    super  # Invoke display method in Collection, 
           # passing it the arguments given to this method
  end 
end 

class CuratedCollection < Collection 
  def initialize(name, genre)
    super(name)   # Always remember to perform superclass initialization
    @genre = genre
  end 
  
  # Override Collection display method to show extra information
  def display(format, show_description:)
    @genre.display() if show_description
    super(format) # Invoke display method in Collection, 
                  # explicitly passing it the format argument 
  end 
end 

series = Series.new("Code")
series.display(:covers)

puts 

genre = Genre.new("Fiction", "Fiction genre description")

curated = CuratedCollection.new("Literary fiction", genre)
curated.display(:list, show_description: true)