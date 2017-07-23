class StockSerializer < ActiveModel::Serializer
  attributes :id, :symbol, :ask, :percent_change, :market_capitalization, :rating
end
