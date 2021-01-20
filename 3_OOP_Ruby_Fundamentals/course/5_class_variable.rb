# class variable like sttaic value 
# @@ use to declare
#cannot be reach outsde of the class 
#if wannto reach outside of the class u have to make get method 

class Book
@@search_count=0


def self.find(title)
    @@search_count +=1
    Book.new(title: "Code",author: "Ruby", pub_year:2020)

end


#like get methid to reach @@  variable
def self.search_count
@@search_count
end



    
end
