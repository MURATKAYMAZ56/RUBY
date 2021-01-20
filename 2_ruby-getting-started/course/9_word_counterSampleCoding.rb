TEXT_FILE="../exerciseFiles/romeo_juliet.txt"
REFERENCE_TEXT_FILE="../exerciseFiles/hamlet.txt"

#Load the words from a file
def words_from_file(text_file)
    File.read(text_file).downcase.gsub(/[^a-z]/, " ").split
    rescue
        puts "Give me #{text_file} and lets get the party started"
        exit 
end

#Load the list of words in both the text and the reference text
words= words_from_file(TEXT_FILE)
words_to_remove=words_from_file(REFERENCE_TEXT_FILE).uniq

#Remove from the text all the word that also appear in the reference text
words_to_remove.each do |word|
     words.delete word
end

#Create a dictionary of word counts
WORD_COUNT={}
words.each do |word|
    WORD_COUNT[word]=0 unless WORD_COUNT[word]
    WORD_COUNT[word] +=1
end
