# use & ampersand to make block as parameter
# use .call to call block

def greet(question, &my_block)
  puts question
  name = gets.chomp
  my_block.call(name)
end

greet("What is your name") do |name|
  puts "Hello#{name}"
end

=begin
delete_if
count
each.value
each.key
=end
