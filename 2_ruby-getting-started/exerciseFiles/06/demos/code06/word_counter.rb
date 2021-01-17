TEXT_FILE = "romeo-juliet.txt"

# Load the words from a file
def words_from_file(text_file)
    File.read(text_file).downcase.gsub(/[^a-z]/, " ").split
end

# Load the list of words in the text
words = words_from_file(TEXT_FILE)

# Create a dictionary of word counts
word_count = {}
# For each word in word_count 
    # If this word is new, add it to word_count...
    word_count[word] = 1
    # ...else increment its count
    word_count[word] += 1
