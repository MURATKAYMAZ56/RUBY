#Maintainn encapsuation and data binding
#all ,ethids are public by default
# Maintain internal intervals

# initialize method by default is public

# Private , Public and Protectes methods

#just define the methods as usual  in the calss just
# right private :methodName or protected
# or
# type private then following all methids are private till new visibility declarration
# protected allows other objects of the same class to use the method

# NOTE  big DIFFERENCE here is private methods can be called also from subclasses

class User
  def db_role

    #some codee
  end

  private :db_role
end
