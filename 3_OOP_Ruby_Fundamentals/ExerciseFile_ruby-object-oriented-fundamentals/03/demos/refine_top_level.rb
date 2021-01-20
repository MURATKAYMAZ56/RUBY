require_relative "refine_string"

using RefineString

puts "code for newbies".titleize

puts "abc".respond_to? :titleize
puts "abc".respond_to? :upcase