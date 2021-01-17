#kind a functuon but no name such anonymous func or closures

dataArray=[
    ["Title", "Author", "Genre", "Year"], 
["Title0", "Author0", "Genre0", "1990"],
 ["Title1", "Author1", "Genre1", "1991"],
  ["Title2", "Author2", "Genre2", "1992"], 
  ["Title3", "Author3", "Genre3", "1993"], 
  ["Title4", "Author4", "Genre4", "1994"],
   ["Title5", "Author5", "Genre5", "1995"]
]
chosenArray=dataArray[2];
test=dataArray.select{|album| album[2]=="Genre1"}
puts(test)