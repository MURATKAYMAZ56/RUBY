class Colection
  def initialize(name)
    @name = name
  end

  def display(format)
    puts "===#{@name}"
    puts "Showing books in a #{format} view"
  end
end

class Series < Colections
  def display(format)
    puts "Series description"
    super
  end
end

class CuratedCollection <Colection

    def initialize(name,genre)
        super(name)
        @genre = genre
    end
def display(format,show_description:) 
@genre.display() if show_description
super(format)
end
end
end

s = Series.new
