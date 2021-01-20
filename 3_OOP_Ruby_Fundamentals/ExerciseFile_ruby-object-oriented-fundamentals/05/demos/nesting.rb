module Libra 
  class Collection  # Classes can be defined inside modules
    module Utils    # Modules can be defined inside classes
      class CollectionHelper  # Multiple levels of nesting are possible
        def self.cleanup
          puts "in cleanup"
        end
      end
    end 
  end 
end 

Utils = Libra::Collection::Utils  # You can define a shorthand constant

Utils::CollectionHelper.cleanup  # Nested names are references using the scope operator

