class Api::V1::StocksController < ApplicationController
  def index
    stocks = Stock.all
    stocks.each do |stock|
      if stock.buy?(stock)
        stock.rating = "Buy"
      else
        stock.rating = "-"
      end
    end
    render json: stocks, adapter: :json
  end
end
