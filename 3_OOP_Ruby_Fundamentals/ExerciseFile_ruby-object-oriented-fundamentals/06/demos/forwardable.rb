require "forwardable"

class Account
  def initialize(id)
  end 
  
  def charge!
    puts "in Account charge!"
  end 
  
  def payment_due?
    puts "in Account payment_due?"
    true
  end 
end

class Mailer
  def send_email
    puts "in Mailer send_email"
  end  
end 

class User 
  extend Forwardable 
  
  def initialize(id)
    @account = Account.new(id)
    @mailer = Mailer.new
  end 
  
  # Delegate a single method under a new name
  def_delegator :@mailer, :send_email, :send_announcement
  
  # Delegate multiple methods in one expressions
  def_delegators :@account, :charge!, :payment_due?
end 

user = User.new(123)
puts "Calling delegated methods on user:"
user.send_announcement()
user.charge! if user.payment_due?()