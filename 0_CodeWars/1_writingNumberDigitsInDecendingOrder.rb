=begin
    
Your task is to make a function that can take any non-negative integer as an argument 
and return it with its digits in descending order. Essentially, 
rearrange the digits to create the highest possible number.

Examples:
Input: 42145 Output: 54421

Input: 145263 Output: 654321

Input: 123456789 Output: 987654321
    
=end
class M
  def decending(num)
    number_array = num.to_s.split("").sort.reverse.join.to_i
    puts number_array
  end
=begin
  def descending2(n)
    result = n..to_s.split("").sort { |x, y| y <=> x }.reverse.join.to_i
    puts result
  end
=end
end

m = M.new
m.decending(1234)
#m.descending2(5678)
