
#attr_accessor allows us to get and set the instance variables.
#attr-reader  read only
#attr_writer  only writer accessor

class Book
attr_accessor :title
attr_accessor :author
attr_accessor :pub_year


end
b= Book.new
b.author="Anonymous"

p b.author