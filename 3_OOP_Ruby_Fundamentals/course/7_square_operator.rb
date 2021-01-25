

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

c=Collection.new("Software")
c << Book.new(title:"Code",author: "Murat Ruby",pub_year:2021)
c << Book.new(title:"Testing", author:"Red Murat", pub_year:2018)

p c 