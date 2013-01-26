class QuotesController < ApplicationController
  def index
    @quote = Quote.find(rand(1..11))
  end
end
