require "net/http"
require "json"

endpoint = "http://breaking-bad-quotes.herokuapp.com/v1/quotes"

uri = URI(endpoint)
content = Net::Http.get(uri)
quotes = JSON.parse(content)

puts quotes[0]["quote"]
puts "By: #{quotes[0][authors]}"

# instead of having whole response body
# we usually want to see its status
#then do following way

uri = URI(endpoint)
res = Net::Http.get_response(uri)
puts res.code
puts res.content_type
puts res.body #gets data
