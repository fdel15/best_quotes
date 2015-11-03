class QuotesController < Rulers2::Controller
  def a_quote
    @noun = "winking"
    render :a_quote
  end

  def quote_1
    quote_1 = FileModel.find(1)
    render :quote, :obj => quote_1
  end

  def index
    @quotes = FileModel.all
  end

  def quotes_by_submitter
    @quotes = FileModel.find_all_by_submitter("Frank")
    render :index
  end

  def show
    @quote = FileModel.find(params["id"])
    @ua = request.user_agent
  end

  def new_quote
    attrs = {
      "submitter" => "web user",
      "quote" => "A picture is worth one k pixels",
      "attribution" => "Me"
    }
    m = FileModel.create attrs
    render :quote, :obj => m
  end

  def update
    q = FileModel.find(1)
    if @env["REQUEST_METHOD"] == "POST"
      q["quote"] = "ATTR NOTTTTT"
      q.save
    end
    render :quote, :obj => q
  end

end