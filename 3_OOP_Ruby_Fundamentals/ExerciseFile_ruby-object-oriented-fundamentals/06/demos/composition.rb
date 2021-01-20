class Account
  def initialize(id)
  end
    
  def charge!
    puts "in Account charge!"
  end 
end

class User 
  attr_reader :account 
  
  def initialize(id)
    @account = Account.new(id)
  end 
end 

class Author 
  attr_reader :user 
  
  def initialize(id)
    @user = User.new(id)
  end
end 

author = Author.new(123)
author.user.account.charge!