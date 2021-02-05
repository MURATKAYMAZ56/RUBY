#YIELD
def my_method
  puts "inside my method"
  yield # otherwisw block will not be triggered
end

my_method do
  puts "Block as argument"
end

##########################

def my_method2
  puts "What is your name"
  name = gets.chomp
  yield name
end

my_method2 do |name|
  puts "Hello #{name}"
end
