=begin
    Given an array of integers, find the one that appears an odd number of times.
    There will always be only one integer that appears an odd number of times.
=end

# wise to use detect() -->returns first value that stisfies condition

def find_it(seq)
  seq.detect { |n| seq.count(n).odd? }
end

p find_it([1, 1, 1, 1, 2, 2, 3, 3, 3, 4, 4, 4, 4])

##########################################################################
def find_it(seq)
  seq.uniq.each do |val|
    return val if seq.count(val).odd?
  end
end

def find_it(seq)
  seq.find { |c| seq.count(c).odd? }
end

def find_it(seq)
  seq.each do |i|
    if seq.count(i) % 2 != 0
      return i
    end
  end
end

def find_it(seq)
  seq.uniq.each { |x| return x if seq.count(x).odd? }
end
