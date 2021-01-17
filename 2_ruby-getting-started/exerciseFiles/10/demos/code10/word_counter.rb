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
WORD_COUNT = {}
words.each do |word|
    WORD_COUNT[word] = 0 unless WORD_COUNT[word]
    WORD_COUNT[word] += 1
end

# Show the most frequent words and their counts
WORD_COUNT.sort_by {|word, count| count }
          .reverse[0...40]
          .each {|word, count| puts "#{word}: #{count}" }
