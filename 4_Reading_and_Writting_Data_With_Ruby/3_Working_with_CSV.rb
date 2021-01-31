# what is CSV : comma seperated value file

#Read fro CSV files :
File.read("addresses.csv")

# Writing to CSV files

require "csv"  # to be able to reach csv static methods such as parse

file_location = "addresses.csv"
content = File.read(file_location)

#####################################################################
data = CSV.parse(content) # parse makes each row a array and each cell an element in that array

data.each do |d|
  puts "adress: #{d[3]} \nFirst Name: #{d[0]} \nLast Name:#{d[1]}\n--------------------"
end

#####################################################################
data = CSV.parse(content, headers: true) # 1.  will exclude header. wont get header as data
                                         # 2. will allow access each value as hash using the header's key (see how used in each methos below)

data.each do |d|
  puts "adress: #{d["adress"]} \nFirst Name: #{d["last_name"]} \nLast Name:#{d[last_name]}\n--------------------"
end
