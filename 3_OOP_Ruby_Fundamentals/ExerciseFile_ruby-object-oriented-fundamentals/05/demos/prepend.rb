module LogTime
  module ClassMethods
    def log_time(method)
      LogTime.const_get("#{self.to_s}LogTime").define_method(method) {| *args, &block |    
  	    start_time = Time.now
	
  	    puts "Calling #{method} with args #{args.inspect} #{'and a block' if block} "
  	    result = super(*args, &block)
	
  	    end_time = Time.now - start_time
  	    puts "Call to #{method} with args #{args.inspect} took #{end_time}s"
  	    result
  	  }
    end
  end

  def self.included(base_class)
    base_class.extend(ClassMethods)
    
    # When LogTime is included in a class, create a new module for it inside LogTime
    log_time_module = const_set("#{base_class}LogTime", Module.new)
    
    # Then, prepend the module to the class
    base_class.prepend(log_time_module)
  end   
end 


class Collection
  include LogTime 

  log_time :find_by_author  # A `prepend`-based implementation lets you 
                            # call log_time before method definitions
  log_time :custom_sort
  
  def find_by_author(author)
    puts "in find_by_author"
    sleep 0.345
  end

  # pass a block for custom sorting
  def custom_sort
    puts "in custom_sort"
    sleep 0.567
    yield
  end
end

class Book
  include LogTime 

  log_time :inspect  # It's fine to time a method from a superclass
end 
    
c = Collection.new
c.find_by_author("Ruby Red")
c.custom_sort { puts "In block" }

p Collection.ancestors  # LogTime::CollectionLogTime shows up first in the ancestor chain

p Book.new.inspect
p Book.ancestors  # LogTime::Book class gets its own prepended module, BookLogTime
