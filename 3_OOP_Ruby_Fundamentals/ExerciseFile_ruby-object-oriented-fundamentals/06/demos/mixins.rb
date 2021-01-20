module Account
  def charge!
    puts "in Account charge!"
  end
end

module UserFunctions 
  def charge!
    super
    puts "in UserFunctions charge!"
  end
end 

module AuthorFunctions
  
end

module PublisherFunctions
end

class User
  include Account 
  include UserFunctions
end 

class Author
  include UserFunctions
  include Account
  include AuthorFunctions
end

u = Author.new
u.charge!