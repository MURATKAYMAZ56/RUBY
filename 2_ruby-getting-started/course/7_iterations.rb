


#for loop
for i in 0...array.length  #notice thet ... means not included
  # some code
end

#while
i=0
while i>5
    puts i 
    i++
end

#upto()
0.upto(5) do |i| puts i end

# times()
3.times do puts yeapHoera end   # will looop 3 times

# another usage of if
word= "this is true" if true  # checks if conditions then assign value
word="this is true"  if false
word="this is true"  if !nil

# insted of abpve if usage can ese unless
#unless
word= "this is true" unless true

#CASE and RANGES

case distance
when(1..3)
    category="walking distance"
when(4..10)
    category="short trip"

end


###########################################################################
#Blocks is like function but deesnot have a name  uses ||
# it is callback

do |arguments|
  #do something
end

# or blocks can be writen such below
{  |arguments|
   #do something
}


$numbers=[1,2,3,4,5,6,7]
 numbers.each do |x| puts(x+1) end


