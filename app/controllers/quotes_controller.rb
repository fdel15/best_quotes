class QuotesController < Rulers2::Controller
  def a_quote
    @noun = "winking"
    render :a_quote
  end

  def quote_1
    quote_1 = FileModel.find(1)
    render :quote_1, :obj => quote_1
  end
end