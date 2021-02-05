=begin
Not a object
connected to a methid call
not a method argument/paremaeter
defeineed with {} or do end key words
only invoke ince
seperates actions away fom the method


=end

3.times {
  puts "Testing"
}
3.times do
  puts "inside block"
end
array = [2, 4, 6]

array.each {
  |num|
  puts "#{num}"
}
array.each do
  |num|
  puts "#{num}"
end
