require "rulers2"

$LOAD_PATH << File.join(File.dirname(__FILE__), "..", "app", "controllers")

module BestQuotes
  class Application < Rulers2::Application
  end
end