require_relative "refine_string"

class Book     
  using RefineString
  
  attr_reader :title
  
  def title=(s)
    @title = s.titleize
  end  
end 

book = Book.new
book.title = "code for newbies"
p book.title