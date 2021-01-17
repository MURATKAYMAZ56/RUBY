TEXT_FILE = "romeo-juliet.txt"

# Load the words from a file
def words_from_file(text_file)
    File.read(text_file).downcase.gsub(/[^a-z]/, " ").split
rescue
    puts "Give me #{text_file} and let's get the party started!"
    exit
end

# Load the list of words in the text
words = words_from_file(TEXT_FILE)

# Create a dictionary of word counts
word_count = {}
words.each do |w|
    word_count[w] = 0 unless word_count[w]
    word_count[w] += 1
end
