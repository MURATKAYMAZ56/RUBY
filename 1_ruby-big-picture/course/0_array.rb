array=[["Title","Author","Genre","Year"],
]

dataArray=[
    ["Title", "Author", "Genre", "Year"], 
["Title0", "Author0", "Genre0", "Year1990"],
 ["Title1", "Author1", "Genre1", "Year1991"],
  ["Title2", "Author2", "Genre2", "Year1992"], 
  ["Title3", "Author3", "Genre3", "Year1993"], 
  ["Title4", "Author4", "Genre4", "Year1994"],
   ["Title5", "Author5", "Genre5", "Year1995"]
]
def createArray (array)

    for i in 0..5
        tempArray= ["Title#{i}" , "Author#{i}", "Genre#{i}","Year199#{i}"]
        array.push(tempArray)
       
       
    end
    
    print(array)
end
createArray(array)