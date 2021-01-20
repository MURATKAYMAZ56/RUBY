

class Collection


    attr_reader :name 
    def initialize(name)
        @name=name
        @books=[]
    end

    def [] (index)
        @books[index]
    end

end

class Collection
def []=(index,book)

    @books[index]=book
end

end

class Collection
def << (book)
    @books << book
end

end

c=COllection.new("Software")
c<< Book.new(title:"Code",author: "Murat Ruby",pub_year:2021)

p c 