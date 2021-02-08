=begin
The goal of this exercise is to convert a string to a new string where 
each character in the new string is "(" if that character appears only 
once in the original string, or ")" if that character appears more than 
once in the original string. Ignore capitalization when determining if a character is a duplicate.

Examples
"din"      =>  "((("
"recede"   =>  "()()()"
"Success"  =>  ")())())"
"(( @"     =>  "))((" 

=end

########------------my solution-----------------#########################------------my solution-----------------#################
def duplicate_encode(word)
  #.select { |key, value| value.size > 1 }
  string = word.downcase
  hash = string.chars.group_by(&:itself)
  #new_string = string.each_char do |c| hash["#{c}"].size > 1 ? "(" : ")" end
  new_string = ""

  string.each_char do |c| hash[c].size > 1 ? new_string += ")" : new_string += "(" end

  return new_string
end

#duplicate_encode("Success")
puts duplicate_encode("recede") == "()()()"
puts duplicate_encode("Success") == ")())())"

########------------sample-----------------#########################------------ sample-----------------#################
def duplicate_encode(word)
  word.downcase.chars.map { |x| word.downcase.count(x) > 1 ? ")" : "(" }.join("")
end

########------------sample-----------------#########################------------ sample-----------------#################
def duplicate_encode(word)
  word.downcase!
  word.chars.map { |c| word.count(c) == 1 ? "(" : ")" }.join
end

########------------sample-----------------#########################------------ sample-----------------#################
def duplicate_encode(word)
  word.downcase!
  word.chars.map do |c|
    if word.count(c) > 1
      ")"
    else
      "("
    end
  end.join
end

########------------sample-----------------#########################------------ sample-----------------#################
def duplicate_encode(str)
  str.downcase!
  str.gsub(/./) { |char| str.count(char) == 1 ? "(" : ")" }
end

########------------sample-----------------#########################------------ sample-----------------#################
