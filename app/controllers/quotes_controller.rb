class QuotesController < ApplicationController
  def index
    rand_num = rand(1..11)
    @quote = Quote.find(rand_num)
  end
end
