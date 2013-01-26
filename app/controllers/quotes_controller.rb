class QuotesController < ApplicationController
  def index
    @quote = Quote.find(1)
  end
end
