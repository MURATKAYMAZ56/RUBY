module AccountMgmt 
  def cancel_account! 
    puts "Account cancelled for #{name}"
  end 
  
  def update_billing(details)
    @billing_details = details
  end 
end 

class User 
  attr_reader :id, :name, :billing_details
  
  def initialize(id, name)
    @id = id
    @name = name
  end 
end 

current_user = User.new(123, "Joe")
p current_user # no billing details at this point

current_user.extend AccountMgmt 

current_user.update_billing("New billing details")
p current_user  # shows that the billing details have been updated 

current_user.cancel_account!