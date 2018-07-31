class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def show
    @order = Order.find(params[:id])
  end

  def create
    @order = Order.new(order_params)
    @order.user = current_user
    if @order.save
      redirect_to @order
    else
      redirect_to posts_url
    end
  end

  private

  def order_params
    params.require(:order).permit(:amount, :order_id, :user_id)
  end
end
