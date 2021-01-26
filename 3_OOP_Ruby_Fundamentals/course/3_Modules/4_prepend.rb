=begin 
allows you to include a moduke in such a way that its methds are looked up beforre the mtethods 
of the class itself


=end

class Colection
  include LogTime # this called mixin
end

p Collection.ancestors  # first collections methods then Logtime will be triggrred

class Collection
  prepend LogTime
end

p Collection.ancestors  # first LoggerTIme then collection will be triggered
