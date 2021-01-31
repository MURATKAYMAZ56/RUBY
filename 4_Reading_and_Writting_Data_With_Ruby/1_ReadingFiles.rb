=begin
we will se how to read a file


    1. Location of file--> assign loation in a variable
    2.Opening a file --> File.open()
    3.Extract Contents ---> return content of file as string to be stored in a variable




=end

file_location = "sample.txt"
file = File.open(file_location)
content = file.read
puts content

# Read file (Shortly)
contentRead = File.read(file_location)
puts contentRead
