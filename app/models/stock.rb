class Stock < ApplicationRecord
  validates :symbol, presence: true, uniqueness: true

  def buy?(stock)
    buy = (stock.peg_ratio.to_f * (0.7)) + ((stock.ask.to_f - stock.fiftyday_moving_average.to_f) * (0.3))
    if (buy < 0)
      true
    end
  end
end
