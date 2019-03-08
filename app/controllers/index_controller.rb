# Don't forget to inherit from application controller to have access to the main layout
class IndexController < ApplicationController


  def index
    # @stock = StockQuote::Stock.company('aapl')
    if params[:id] == ""
      @nothing = 'Please enter a correct symbol'
    elsif
      if params[:id]
        begin
          @stock = StockQuote::Stock.quote(params[:id])
          @stats = StockQuote::Stock.stats(params[:id])
          @ohlc = StockQuote::Stock.ohlc(params[:id])
        rescue StandardError
          @error = "The chosen ticker does not exist"
        end
      end
    end
  end

  def about
  end

end
