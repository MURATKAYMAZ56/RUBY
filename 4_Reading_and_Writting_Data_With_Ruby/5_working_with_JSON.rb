require "json"

content = '{
    "id":1,"firstname":"Murat", "lastname":"Kay"
}'

data = JSON.parse(content)

puts "ID: #{data["id"]}"
puts "firstname: #{data["firstname"]}"
puts "lastname: #{data["lastname"]}"
