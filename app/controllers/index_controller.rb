# Don't forget to inherit from application controller to have access to the main layout
class IndexController < ApplicationController


  def index
    # @stock = StockQuote::Stock.company('aapl')
    if params[:id] == ""
      @nothing = 'Please enter a correct symbol'
    elsif
      if params[:id]
        @stock = StockQuote::Stock.quote(params[:id])
      end
    end
  end

  def about
  end

end
