class StocksController < ApplicationController
  def create
    json = JSON.parse(request.body.read)
    @stock = StockQuote::Stock.json_quote(json["ticker"])
    new_stock = Stock.create(
      symbol: @stock["quote"]["symbol"],
      ask: @stock["quote"]["Ask"],
      percent_change: @stock["quote"]["PercentChange"],
      market_capitalization: @stock["quote"]["MarketCapitalization"],
      average_daily_volume: @stock["quote"]["AverageDailyVolume"],
      dividend_share: @stock["quote"]["DividendShare"],
      earning_share: @stock["quote"]["EarningsShare"],
      eps_estimate_current_year: @stock["quote"]["EPSEstimateCurrentYear"],
      eps_estimate_next_year: @stock["quote"]["EPSEstimateNextYear"],
      eps_estimate_next_quarter: @stock["quote"]["EPSEstimateNextQuarter"],
      days_low: @stock["quote"]["DaysLow"],
      days_high: @stock["quote"]["DaysHigh"],
      year_low: @stock["quote"]["YearLow"],
      year_high: @stock["quote"]["YearHigh"],
      change_from_year_low: @stock["quote"]["ChangeFromYearLow"],
      percent_change_from_year_low: @stock["quote"]["PercentChangeFromYearLow"],
      change_from_year_high: @stock["quote"]["ChangeFromYearHigh"],
      percent_change_from_year_high: @stock["quote"]["PercentChangeFromYearHigh"],
      days_range: @stock["quote"]["DaysRange"],
      fiftyday_moving_average: @stock["quote"]["FiftydayMovingAverage"],
      two_hundredday_moving_average: @stock["quote"]["HundreddayMovingAverage"],
      change_from_fiftyday_moving_average: @stock["quote"]["ChangeFromFiftydayMovingAverage"],
      percent_change_from_fiftyday_moving_average: @stock["quote"]["PercentChangeFromFiftydayMovingAverage"],
      pe_ratio: @stock["quote"]["PERatio"],
      peg_ratio: @stock["quote"]["PEGRatio"],
      price_eps_estimate_current_year: @stock["quote"]["PriceEPSEstimateCurrentYear"],
      price_eps_estimate_next_year: @stock["quote"]["PriceEPSEstimateNextYear"],
      shares_owned: @stock["quote"]["SharesOwned"],
      short_ratio: @stock["quote"]["ShortRatio"],
      volume: @stock["quote"]["Volume"],
      year_range: @stock["quote"]["YearRange"]
    )
    if new_stock.buy?(new_stock)
      new_stock.rating = "Buy"
    else
      new_stock.rating = "-"
    end
    render json: new_stock
  end
end
