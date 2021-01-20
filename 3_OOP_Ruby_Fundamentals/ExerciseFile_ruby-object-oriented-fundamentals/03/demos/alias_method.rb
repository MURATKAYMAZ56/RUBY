class Collection
  def self.log_time(method)
    alias_method "_original_#{method}".to_sym, method

    define_method(method) {| *args, &block |    
      start_time = Time.now

      puts "Calling #{method} with args #{args.inspect} #{'and a block' if block} "
      result = public_send "_original_#{method}".to_sym, *args, &block

      end_time = Time.now - start_time
      puts "Call to #{method} with args #{args.inspect} took #{end_time}s"
      result
    }
  end 

  def find_by_author(author)
    puts "in find_by_author"
    sleep 0.345
  end

  def custom_sort
    puts "in custom_sort"
    yield
    sleep 0.567
  end

  log_time :find_by_author
  log_time :custom_sort
end

c = Collection.new
c.find_by_author("Ruby Red")
c.custom_sort { puts "Custom sort in a block" }