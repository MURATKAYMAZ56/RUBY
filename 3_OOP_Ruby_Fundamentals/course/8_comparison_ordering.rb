=begin
    default imlementation
    obj1==obj2 -> 0
    otherwisise -> nil
=end

=begin 
    Needed implementation
    use <=> to compare 2 objects
    ob1==ob2 ->0
    ob1 < obj2 -> -1
    obj1 > obj2 -> 1

=end

class Collection
    def <=>(other)
        name<=> other.name
    end
end

fiction=Collection.new("Fiction")
fiction=Collection.new("Science")
p fiction <=> science

