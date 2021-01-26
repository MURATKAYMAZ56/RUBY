# Conventionalu perefer composition to Inhertitance
#prefer mixxins to inheritance

# inheritance is a relation

#composition has a relation

class User
  def initialize(id)
    @account = Account.new(id)  #Composition
  end
end

class Author < User
end

#each user has a account-->composition
#eash author is auser --> inheritance
