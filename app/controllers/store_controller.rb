class StoreController < ApplicationController

  def session_counter
    if session[:counter].nil?
      session[:counter] = 0
    end
    session[:counter] += 1

  end
  def index

    @products = Product.order(:title)
    @count = session_counter
    @count_message = 'views ' + @count.to_s
  end
end
