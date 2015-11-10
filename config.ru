require './config/application'

map "/" do
  run QuotesController.action(:index)
end

run BestQuotes::Application.new