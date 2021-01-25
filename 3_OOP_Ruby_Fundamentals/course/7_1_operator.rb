class Collection


    # redefine not operator(!) return false when collection is empty
    def!
        @books.empty?
    end

    if !c
        puts "Collection #{c.name} is empty. "
    end
end