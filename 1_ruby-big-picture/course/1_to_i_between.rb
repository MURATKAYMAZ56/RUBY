
#this is way to write comment
#here we will see how to use .to_i and between methods

dataArray=[
    ["Title", "Author", "Genre", "Year"], 
["Title0", "Author0", "Genre0", "1990"],
 ["Title1", "Author1", "Genre1", "1991"],
  ["Title2", "Author2", "Genre2", "1992"], 
  ["Title3", "Author3", "Genre3", "1993"], 
  ["Title4", "Author4", "Genre4", "1994"],
   ["Title5", "Author5", "Genre5", "1995"]
]
array=dataArray[2]

def usageToAndBetween(array)
checkingValue=array[3].to_i.between?(1989,1995)
    
    
return puts(checkingValue)
end

usageToAndBetween(array)