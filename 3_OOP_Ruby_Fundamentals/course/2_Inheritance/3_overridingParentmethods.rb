#you call parent method     using super
#idea is like java
#

class Collection
  def display(format)
    puts "parent class"
  end
end

class Series < Collection
  def display(format)
    puts "child class"

    super
    #here super calls parent merhods as well

  end
end
