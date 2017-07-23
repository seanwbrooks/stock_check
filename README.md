# README

This small side project was completed within one day (Ship It Saturday) in Boston, MA. It uses React and Foundation on the front-end and Rails on the back-end. The application uses the Stock Quote gem to import market information.

##Functionality
The user can enter a stock and receives its price, daily percent change, market cap, and rating, which is calculated by a simple algorithm.

##Version
Ruby 2.3.3
Rails 5.0.0.1

##Configuring
Add `gem "stock_quote"`

Run `bundle` and `npm install` to bundle gems and dependencies

##Database
Run `rake db:create` to create a database
