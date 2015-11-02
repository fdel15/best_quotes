class QuotesController < Rulers2::Controller
  def a_quote
    @noun = "winking"
    render :a_quote
  end
end