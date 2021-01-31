require "json"

hash = {
  id: 1,
  firstname: "Murat",
  lastname: "Kay",
}

content = JSON.pretty_generate(hash)  # instead of one string line makes prettier as JSON format

File.write("test.json", content)
