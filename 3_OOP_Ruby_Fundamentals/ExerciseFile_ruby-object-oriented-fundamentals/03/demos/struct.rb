Comment = Struct.new(:text, :created_at, :review_id, :user_id, keyword_init: true) do
  def snippet
    text.length > 50 ? "#{text[0...47]}..." : text
  end
end

c = Comment.new(text: "This is a verbose but fascinating comment that will be snipped.", user_id: 1) 
p c
puts "Snippet: #{c.snippet}"
