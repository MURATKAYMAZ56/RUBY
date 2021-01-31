# use write(location,content) method

file = "sample.txt"
new_content = "Murat adds something to current file"

#  File.write(file, new_content) # HERE NOTE THAT IT WILL OVERWRITE THE FILE not good!

File.write(file, new_content, mode: "a") # HERE  WILL append THE FILE so good!

# puts File.read(file)

# or

new_content2 = " here we will append by using anonymous function  "
File.open(file, "a") do |file|
  file.write(new_content2)
end

puts File.read(file)
