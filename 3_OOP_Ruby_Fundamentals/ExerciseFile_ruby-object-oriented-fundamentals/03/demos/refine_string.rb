module RefineString
  refine String do 
    SHORT_WORDS = %w{a an and as at but by en for if in of on or the to v v. via vs vs.}
    def titleize
      split.map {|word|
        if SHORT_WORDS.include?(word) then word else word.capitalize end
      }.join(" ")
    end
  end
end