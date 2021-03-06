# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170722160656) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "stocks", force: :cascade do |t|
    t.string   "symbol",                                      null: false
    t.string   "ask"
    t.string   "percent_change"
    t.string   "market_capitalization"
    t.string   "average_daily_volume"
    t.string   "dividend_share"
    t.string   "earning_share"
    t.string   "eps_estimate_current_year"
    t.string   "eps_estimate_next_year"
    t.string   "eps_estimate_next_quarter"
    t.string   "days_low"
    t.string   "days_high"
    t.string   "year_low"
    t.string   "year_high"
    t.string   "change_from_year_low"
    t.string   "percent_change_from_year_low"
    t.string   "change_from_year_high"
    t.string   "percent_change_from_year_high"
    t.string   "days_range"
    t.string   "fiftyday_moving_average"
    t.string   "two_hundredday_moving_average"
    t.string   "change_from_fiftyday_moving_average"
    t.string   "percent_change_from_fiftyday_moving_average"
    t.string   "pe_ratio"
    t.string   "peg_ratio"
    t.string   "price_eps_estimate_current_year"
    t.string   "price_eps_estimate_next_year"
    t.string   "shares_owned"
    t.string   "short_ratio"
    t.string   "volume"
    t.string   "year_range"
    t.string   "rating"
    t.datetime "created_at",                                  null: false
    t.datetime "updated_at",                                  null: false
  end

end
