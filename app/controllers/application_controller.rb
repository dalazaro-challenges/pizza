class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def manager
    @orders = Order.all
  end
  
end
