# we will see  3 types coding the same content

############------------111111111------------
def convert_to_inches(meters)
  if meters.is_a?(Numeric)
    meters * 39.37
  end
end

def convert_to_feet(meters)
  if meters.is_a?(Numeric)
    meters * 3.28
  end
end

def convert_to_yards(meters)
  if meters.is_a?(Numeric)
    meters * 1.09
  end
end

p convert_to_inches(5)
p convert_to_feet(5)
p convert_to_yards(5)

##############---------------22222222222----------
#note in 1 that i
def convert_to_inches(meters)
  meters * 39.37 if meters.is_a?(Numeric)
end

def convert_to_feet(meters)
  meters * 3.28 if meters.is_a?(Numeric)
end

def convert_to_yards(meters)
  meters * 1.09 if meters.is_a?(Numeric)
end

p convert_to_inches(5)
p convert_to_feet(5)
p convert_to_yards(5)
#################----------33333333---------
def convert(meters, unit)
  yield(meters, unit) if meters.is_a?(Numeric)
end

p convert(5, "inches") { |meters| meters * 39.37 }
p convert(5, "feet") { |meters| meters * 3.28 }
p convert(5, "yards") { |meters| meters * 1.09 }

###################-------------444444------LAMBDA

to_inches = lambda { |meters| meters * 38.37 }
to_feet = lambda { |meters| meters * 3.28 }
to_yards = lambda { |meters| meters * 1.09 }

def convert(meters, unit_lambda)
  unit_lambda.call(meters) if meters.is_a?(Numeric)
end

p convert(5, to_inches)
p convert(5, to_feet)
p convert(5, to_yards)

# in addition see belove logic
p [5, 10, 20].map(&to_inches)
