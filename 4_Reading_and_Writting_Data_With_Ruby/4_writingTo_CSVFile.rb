#2 ways
# write text
#Rubys CVS Library

require "csv"
file = "addresses.csv"

data = [
  ["fist_name", "last_name", "adress"],
  ["murat", "Kay", "overthere"],
  ["Mrt", "kym", "here"],
]
content = data.map { |d| d.join(",") }.join("\n")

#  File.write("addresses.csv", content) #watch out it overwrites

CSV.open(file, "a") do |c| # a for append
  c << ["fist_name", "last_name", "adress"]
  c << ["murat", "Kay", "overthere"]
  c << ["Mrt", "kym", "here"]
end
