proc = Proc.new {
  "This is a procs"
}
lambda = lambda { puts "This is a lambda" }

p proc.class
p lambda.class # notice that they are both from Proc class

# lets is a main dif between lamda and proc. argument
proc = Proc.new { |name| puts "name is:#{name}" }

proc.call("Jhon", "Doe")
proc.call
proc.call("John")

# as see above proc doesnot care arg that much
lambda2 = lambda { |name| puts "Name is : #{name}" }
# lambda2.call("Jhon", "Doe") # will give error
# lambda2.call
lambda2.call("John")

#######################-----another big fifference is RETURN statement
################### lambda returns to its own body but procs to its parent method.lambda acts like sub method

def a_lambda
  lambda = lambda { return puts "exit" }
  lambda.call
  puts "end of a_lambda method"
end

def a_proc
  proc = Proc.new { return puts "exiting proc " }
  proc.call
  puts "end of a_proc method"
end

a_lambda
a_proc
