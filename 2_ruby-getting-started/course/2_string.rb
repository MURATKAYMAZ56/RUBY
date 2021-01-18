my_string= "lets play with THIS STRING"


puts my_string.downcase  
puts "here original string not changed  " + my_string
my_string.downcase! #reassign my_string
#! is called bangmethod
puts  "here string is also changed "+my_string

####################################################
# ? metods return boolean value
 questionMethod= 42.odd?
puts questionMethod