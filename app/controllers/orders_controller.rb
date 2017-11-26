class OrdersController < ApplicationController

  def index
    @orders = Order.all.order('pickup ASC')
  end

  def new
    @order = Order.new
  end

  def create
    order = Order.new(order_params)
    order.pickup = Time.parse "#{order_params[:time]}"
    order.ready = false

    if order.save
      flash[:notice] = 'Order saved.'
    else
      flash[:error] = 'There was an error in saving the order. Please try again.'
    end

    redirect_to new_order_path
  end

  def show
    @order = Order.find_by_id(params[:id])
  end

  def edit
    @order = Order.find_by_id(params[:id])
  end

  def update
    order = Order.find_by_id(params[:id])
    order.update_attributes(order_params)
    flash[:notice] = 'Order updated.'
    redirect_to orders_path(order)
  end

  def destroy
    order = Order.find_by_id(params[:id])
    order.destroy
    redirect_to orders_path
  end

  private

  def order_params
    params.require(:order).permit(:name, :phone, :time, :size, :toppings, :ready)
  end
end
