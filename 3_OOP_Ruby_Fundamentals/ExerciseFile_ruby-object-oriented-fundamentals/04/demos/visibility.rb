class User
  ROLES = ["user", "author", "publisher"]
  # constants can be made private with private_constant
  private_constant :ROLES  

  private 
    
  def db_role
    "user's role"
  end

  def db_plan
    "user's account plan"
  end

  public
  
  def is_authorized_for?(page)
    true
  end 
end


user = User.new

# Calling a public method
puts "Checking authorization: #{user.is_authorized_for?("page")}"

begin
  # Calling a private method will trigger an exception
  user.db_role
rescue NoMethodError
  puts "Could not call private method user.db_role"
end

# A private method can still be called via __send__
puts "Calling db_role via send: #{user.__send__(:db_role)}"


begin
  # public_send respects visibility restrictions, unlike __send__
  puts "Calling db_role via send: #{user.public_send(:db_role)}"
rescue NoMethodError
  puts "Could not call private method user.db_role via public_send"
end
  
class Author < User
  def is_authorized_for?(page)
    if page.start_with?("author/") 
      # a private method of a superclass can be called from a subclass
      db_role == "author"
    else 
      super
    end 
  end
end 
  
author = Author.new
  
puts "Checking author authorization: #{author.is_authorized_for?('author/')}"

class Collection
  # class methods can be made private with private_class_method instead of private
  private_class_method :new
  
  def initialize(id)
    @id = id
  end
  
  def self.factory(id)
    new(id)
  end
  
  def ==(other)
    # a protected method can be called by any other instance of a class or a subclass
    id == other.id
  end
  
  protected
  attr_reader :id   
end 

puts "Comparing collections with the same ID: #{Collection.factory(1) == Collection.factory(1)}"
