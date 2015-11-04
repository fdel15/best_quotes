require "sqlite3"
require "rulers2/sqlite_model"

class MyTable < Rulers2::Model::SQLite; end
STDERR.puts MyTable.schema.inspect

# Create row

mt = MyTable.create "title" => "I saw it again!"
mt["title"] = "This is an update!"
mt.save!


# mt2 = MyTable.find mt["id"]

# puts "Title: #{mt2["title"]}"

puts "Count: #{MyTable.count}"

top_id = mt["id"].to_i
(1..top_id).each do |id|
  mt_id = MyTable.find(id)
  puts "Found title #{mt_id["title"]}."
end