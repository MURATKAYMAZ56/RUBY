class BookForm
  attr_accessor :title, :isbn, :pub_year
  
  def self.validates(attr, rules)
    @validations ||= Hash.new
    @validations[attr] = rules 
  end
  
  def self.validations
    @validations
  end
  
  validates :title, blank: false 
  validates :isbn, blank: false, format: :isbn
  validates :pub_year, type: :int
end 

p BookForm.validations
