evens = [2, 4, 6, 8]
odds = [1, 3, 5, 7]
squares_of_evens = evens.map { |num| num ** 2 }
squares_of_odds = odds.map { |num| num ** 2 }

p squares_of_evens
p squares_of_odds

# look at the code above see that |num| block used twice and can be repead  more  for any other logic
#instead of this define proc just call it whereever you want

# for instance what if you wanna change to cubes from suares? then use procs is wiser

squares = Proc.new { |x| x ** 2 }
even_squares = evens.map(&squares)
odd_squares = odds.map(&squares)
p even_squares
p odd_squares

# pasing proc as arg
def my_method
  puts "inside my method"
  yield
end

my_proc = Proc.new { puts "Inisde the proc" }
my_method(&my_proc) # note that my_method normally desnot get any arg but ruby know it is proc because of &

# using CALL method
greet = Proc.new { puts "hello there!" }
greet.call
