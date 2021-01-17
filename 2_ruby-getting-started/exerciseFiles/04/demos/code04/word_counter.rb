TEXT_FILE = "romeo-juliet.txt"

words = File.read(TEXT_FILE).downcase.gsub(/[^a-z]/, " ").split