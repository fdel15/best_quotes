require "sqlite3"
require "rulers2/sqlite_model"

class MyTable < Rulers2::Model::SQLite; end
STDERR.puts MyTable.schema.inspect