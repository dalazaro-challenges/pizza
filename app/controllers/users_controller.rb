class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def manager
    @orders = Order.all.order('created_at ASC')
  end

end
