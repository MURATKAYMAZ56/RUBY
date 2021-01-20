class Collection
    @search_count=0
    
    def self.find
    @search_count +=1
    end

end


class Collection


    def self.search_count
        @search_count
        end
end


class Series < Collection

@search_count=0
end

Collection.find()
Series.find()
Series.find()

p Collection.search_count
p Series.search_count